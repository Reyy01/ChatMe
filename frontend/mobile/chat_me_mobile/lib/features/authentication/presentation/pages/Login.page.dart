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
import 'package:chat_me_mobile/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:chat_me_mobile/features/authentication/usecases/login_user.usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AuthBloc _authBloc;

  late LoginUserUsecase _loginUserUsecase;

  final GlobalKey<FormFieldState<dynamic>> _emailKey = GlobalKey();
  final GlobalKey<FormFieldState<dynamic>> _passwordKey = GlobalKey();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  late StackRouter _router;

  bool isObscure = true;

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();
    // _authBloc.add(const AuthEvent.connectUserStream());

    _loginUserUsecase = getIt<LoginUserUsecase>();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus) {
        _emailKey.currentState!.validate();
      }
    });

    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        _passwordKey.currentState!.validate();
      }
    });

    _router = AutoRouter.of(context);

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
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
                SizedBox(
                  width: double.infinity,
                  child: _logo,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      _form,
                      const SizedBox(height: 15),
                      BlocConsumer<AuthBloc, AuthState>(
                        bloc: _authBloc,
                        listener: _authListener,
                        builder: (BuildContext context, AuthState state) {
                          return ButtonAtom(
                            text: 'Login',
                            onPressed: () {
                              _submit();
                            },
                            isLoading:
                                state.stateStatus == StateStatus.loadingState,
                          );
                        },
                      ),
                      _switchToSignUp,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Widgets
  ///
  Widget get _logo => const Center(
        child: Image(
          image: AssetImage('assets/images/chatme.png'),
          height: 200,
          width: 200,
        ),
      );

  Widget get _form => Column(
        children: <Widget>[
          TextFieldAtom(
            textLabel: 'Email',
            globalKey: _emailKey,
            controller: _emailController,
            focusNode: _emailFocusNode,
            onChanged: _emailOnChanged,
            validator: _emailValidator,
          ),
          const SizedBox(height: 15),
          TextFieldAtom(
            textLabel: 'Password',
            globalKey: _passwordKey,
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            onChanged: _passwordOnChanged,
            validator: _passwordValidator,
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
        ],
      );

  Widget get _switchToSignUp => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Don\'t have an account?',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            child: TextButton(
              onPressed: () {
                _router.push(const RegisterRoute());
              },
              child: const Text(
                'Sign up.',
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

  /// Private methods
  ///
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

  String? _emailValidator(String? value) {
    final String? result = validateEmailAddress(value);
    return result;
  }

  String? _passwordValidator(String? value) {
    final String? result = validatePassword(value, 'Password');
    return result;
  }

  void _submit() {
    HapticFeedback.mediumImpact();
    final bool isUsernameValid = _emailKey.currentState!.validate();
    final bool isPasswordValid = _passwordKey.currentState!.validate();
    if (isUsernameValid && isPasswordValid) {
      _emailFocusNode.unfocus();
      _passwordFocusNode.unfocus();

      _loginUserUsecase.execute(LoginUserDto(
        email: _emailController.text,
        password: _passwordController.text,
      ));
    }
  }

  /// Bloc Listeners
  ///
  void _authListener(BuildContext context, AuthState state) {
    if (state.stateStatus == StateStatus.errorState) {
      showSnackBar(
        context: context,
        toastIcon: Icons.error,
        title: 'Error',
        subtitle: state.errorMessage,
      );
    }
  }
}
