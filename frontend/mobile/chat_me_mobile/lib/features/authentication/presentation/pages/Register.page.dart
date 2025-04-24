import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/logic/enums.dart';
import 'package:chat_me_mobile/core/logic/validator.dart';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/core/widgets/atoms/Button.atom.dart';
import 'package:chat_me_mobile/core/widgets/atoms/Snackbar.atom.dart';
import 'package:chat_me_mobile/core/widgets/atoms/TextField.atom.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/data/dto/RegisterUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/usecases/register_user.usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late RegisterUserUsecase _registerUserUsecase;

  late AuthBloc _authBloc;

  final GlobalKey<FormFieldState<dynamic>> _nameKey = GlobalKey();
  final GlobalKey<FormFieldState<dynamic>> _emailKey = GlobalKey();
  final GlobalKey<FormFieldState<dynamic>> _passwordKey = GlobalKey();
  final GlobalKey<FormFieldState<dynamic>> _repeatPasswordKey = GlobalKey();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _repeatPasswordController;
  late FocusNode _nameFocusNode;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  late FocusNode _repeatPasswordFocusNode;
  late StackRouter _router;
  late ColorTheme colorTheme;

  bool isObscure = true;
  bool isRepeatObscure = true;
  File? _selectedImage;

  @override
  void initState() {
    _registerUserUsecase = getIt<RegisterUserUsecase>();

    _authBloc = getIt<AuthBloc>();

    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _repeatPasswordController = TextEditingController();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _repeatPasswordFocusNode = FocusNode();

    _router = AutoRouter.of(context);

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _repeatPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return Scaffold(
      backgroundColor: colorTheme.white_blueGrey,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: CustomColors.darkOrange,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!)
                        : null,
                    child: _selectedImage == null
                        ? const Icon(
                            Icons.camera_alt,
                            size: 50,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 15),
                _form,
                const SizedBox(height: 15),
                BlocConsumer<AuthBloc, AuthState>(
                  bloc: _authBloc,
                  listener: _authListener,
                  builder: (BuildContext context, AuthState state) {
                    return ButtonAtom(
                      text: 'Register',
                      onPressed: _submit,
                      isLoading: state.stateStatus == StateStatus.loadingState,
                    );
                  },
                ),
                _switchToLogin,
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Private Widgets
  ///
  Widget get _form => Column(
        children: <Widget>[
          TextFieldAtom(
            textLabel: 'Name',
            globalKey: _nameKey,
            controller: _nameController,
            focusNode: _nameFocusNode,
            validator: _nameValidator,
            onChanged: _nameOnChanged,
          ),
          const SizedBox(height: 15),
          TextFieldAtom(
            textLabel: 'Email',
            globalKey: _emailKey,
            controller: _emailController,
            focusNode: _emailFocusNode,
            validator: _emailValidator,
            onChanged: _emailOnChanged,
          ),
          const SizedBox(height: 15),
          TextFieldAtom(
            textLabel: 'Password',
            globalKey: _passwordKey,
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            validator: _passwordValidator,
            onChanged: _passwordOnChanged,
            isPassword: isObscure,
            onTapPasswordIcon: () {
              if (mounted) {
                setState(() {
                  isObscure = !isObscure;
                });
              }
            },
            iconData: isObscure ? Icons.visibility : Icons.visibility_off,
          ),
          const SizedBox(height: 15),
          TextFieldAtom(
            textLabel: 'Repeat Password',
            globalKey: _repeatPasswordKey,
            controller: _repeatPasswordController,
            focusNode: _repeatPasswordFocusNode,
            validator: _repeatPasswordValidator,
            onChanged: _repeatPasswordOnChanged,
            isPassword: isRepeatObscure,
            onTapPasswordIcon: () {
              if (mounted) {
                setState(() {
                  isRepeatObscure = !isRepeatObscure;
                });
              }
            },
            iconData: isRepeatObscure ? Icons.visibility : Icons.visibility_off,
          ),
        ],
      );

  Widget get _switchToLogin => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Already have an account?',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            child: TextButton(
              onPressed: () {
                _router.push(const LoginRoute());
              },
              child: const Text(
                'Login.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CustomColors.darkOrange,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      );

  /// Private Methods
  ///
  void _nameOnChanged(String? value) {
    if (value != null && value.isNotEmpty) {
      _nameKey.currentState?.validate();
    }
  }

  void _emailOnChanged(String? value) {
    if (value != null && value.isNotEmpty) {
      _emailKey.currentState?.validate();
    }
  }

  void _passwordOnChanged(String? value) {
    if (value != null && value.isNotEmpty) {
      _passwordKey.currentState?.validate();
    }
  }

  void _repeatPasswordOnChanged(String? value) {
    if (value != null && value.isNotEmpty) {
      _repeatPasswordKey.currentState?.validate();
    }
  }

  String? _nameValidator(String? value) {
    final String? result = validateString(value, 'Name');

    return result;
  }

  String? _emailValidator(String? value) {
    final String? result = validateEmailAddress(value);

    return result;
  }

  String? _passwordValidator(String? value) {
    final String? result = validatePassword(value, 'Password');

    return result;
  }

  String? _repeatPasswordValidator(String? value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      if (mounted) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    }
  }

  void _submit() {
    HapticFeedback.mediumImpact();
    if (_emailKey.currentState!.validate() &&
        _passwordKey.currentState!.validate() &&
        _repeatPasswordKey.currentState!.validate()) {
      _nameFocusNode.unfocus();
      _emailFocusNode.unfocus();
      _passwordFocusNode.unfocus();
      _repeatPasswordFocusNode.unfocus();
      _registerUserUsecase.execute(RegisterUserDto(
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      ));
    }
  }

  void _authListener(BuildContext context, AuthState state) {
    if (state.stateStatus == StateStatus.errorState) {
      showSnackBar(
        context: context,
        toastIcon: Icons.error,
        title: 'Error',
        subtitle: state.errorMessage,
      );
    }

    if (state.hasRegisteredUser ?? false) {
      showSnackBar(
        context: context,
        toastIcon: Icons.check,
        title: 'Success',
        subtitle: 'User registered successfully',
      );
    }
  }
}
