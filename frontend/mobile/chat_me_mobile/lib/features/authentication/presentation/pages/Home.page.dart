import 'package:auto_route/auto_route.dart';
import 'package:chat_me_mobile/core/router/app_router.dart';
import 'package:chat_me_mobile/core/utils/color_theme.utils.dart';
import 'package:chat_me_mobile/core/utils/cutom_colors.dart';
import 'package:chat_me_mobile/dic/injection.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/auth_bloc.dart';
import 'package:chat_me_mobile/features/authentication/data/bloc/theme/theme_bloc.dart';
import 'package:chat_me_mobile/features/authentication/presentation/widgets/AuthDetails.widget.dart';
import 'package:chat_me_mobile/features/authentication/usecases/theme/change_theme.usecase.dart';
import 'package:chat_me_mobile/features/chat/usecases/get_chats.usecase.dart';
import 'package:chat_me_mobile/features/user/usecases/get_users.usecase.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class HomeNavPage {
  const HomeNavPage({required this.screenRoute, required this.navItem});

  final PageRouteInfo<dynamic> screenRoute;
  final IconData navItem;
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  late TabsRouter tabsRouter;

  late ThemeBloc _themeBloc;
  late AuthBloc _authBloc;

  late ChangeThemeUsecase _changeThemeUsecase;
  late GetUsersUsecase _getUsersUsecase;
  late GetChatsUsecase _getChatsUsecase;

  // late MediaQueryData _mediaQuery;

  @override
  void initState() {
    super.initState();

    _themeBloc = getIt<ThemeBloc>();
    _authBloc = getIt<AuthBloc>();

    _changeThemeUsecase = getIt<ChangeThemeUsecase>();
    _getUsersUsecase = getIt<GetUsersUsecase>();
    _getChatsUsecase = getIt<GetChatsUsecase>();

    _getUsersUsecase.execute();
    _getChatsUsecase.execute(_authBloc.state.loginDatas?.uid ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final List<PageRouteInfo<dynamic>> routes =
        _tabScreens().map((HomeNavPage x) => x.screenRoute).toList();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:
            false, // avoid the navbar coming up when the keyboad is open
        backgroundColor: Colors.transparent,
        body: AutoTabsRouter(
          routes: routes,
          builder: (BuildContext context, Widget child) {
            tabsRouter = AutoTabsRouter.of(context);
            return Stack(
              children: <Widget>[
                Scaffold(
                  key: _scaffoldKey,
                  backgroundColor: Colors.transparent,
                  appBar: _appBar,
                  bottomNavigationBar: _bottomNavigation,
                  drawer: _drawer,
                  body: _body(child),
                ),
                // const AppVersionOptionPage(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget get _drawer => const Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: AuthDetailsWidget(),
      );

  Widget _body(Widget child) {
    final bool isSmallScreen = MediaQuery.of(context).size.height < 684;
    return ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width,
          height: _getConstraintsHeight(isSmallScreen, context),
        ),
        child: child);
  }

  PreferredSizeWidget get _appBar {
    final ColorTheme colorTheme = getIt<ColorThemeUtils>().getColors(context);
    return AppBar(
      title: Text(
        tabsRouter.activeIndex == 0 ? 'Chats' : 'Contacts',
        style: TextStyle(
          color: colorTheme.black_white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Builder(builder: (BuildContext context) {
        return CircleAvatar(
          backgroundColor: colorTheme.white_blueGrey,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: colorTheme.black_white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      }),
      actions: <Widget>[
        _themeToggle,
      ],
      backgroundColor: colorTheme.white_blueGrey,
      elevation: 1.0,
      automaticallyImplyLeading: false,
    );
  }

  Widget get _bottomNavigation {
    return BottomNavigationBar(
      selectedFontSize: 0,
      unselectedFontSize: 0,
      iconSize: 30,
      selectedItemColor: CustomColors.darkOrange,
      currentIndex: tabsRouter.activeIndex,
      onTap: _selectNavOption,
      items: _tabScreens().map((HomeNavPage e) {
        return BottomNavigationBarItem(
          icon: Icon(e.navItem),
          label: '',
        );
      }).toList(),
    );
  }

  Widget get _themeToggle => BlocSelector<ThemeBloc, ThemeState, Brightness>(
        bloc: _themeBloc,
        selector: (ThemeState state) => state.theme,
        builder: (BuildContext context, Brightness state) {
          final ColorTheme colorTheme =
              getIt<ColorThemeUtils>().getColors(context);
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              state == Brightness.light
                  ? _changeThemeUsecase.execute(Brightness.dark)
                  : _changeThemeUsecase.execute(Brightness.light);
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Icon(
                state == Brightness.light ? Icons.dark_mode : Icons.light_mode,
                color: colorTheme.black_white,
              ),
            ),
          );
        },
      );

  List<HomeNavPage> _tabScreens() {
    return <HomeNavPage>[
      const HomeNavPage(
        screenRoute: ChatsRoute(),
        navItem: FluentIcons.chat_12_regular,
      ),
      const HomeNavPage(
        screenRoute: ContactsRoute(),
        navItem: FluentIcons.people_chat_16_regular,
      ),
    ];
  }

  void _selectNavOption(int i) {
    tabsRouter.setActiveIndex(i);
  }

  double _getConstraintsHeight(bool isSmallScreen, BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    const double appBarHeight = kToolbarHeight;
    const double bottomNavigationHeight = kBottomNavigationBarHeight;
    final double safeArea = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;

    final double heightToRemove =
        appBarHeight + safeArea + bottomNavigationHeight;

    return deviceHeight - heightToRemove;
  }
}
