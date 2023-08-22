import 'package:auth_task/core/extensions/context_extension.dart';
import 'package:auth_task/core/listenable_stream.dart';
import 'package:auth_task/domain/user_cubit/interfaces/i_user_cubit.dart';
import 'package:auth_task/domain/user_cubit/user_state.dart';
import 'package:auth_task/ui/auth/auth_page.dart';
import 'package:auth_task/ui/home/cupertino_nested_scaffold.dart';
import 'package:auth_task/ui/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({super.key});

  final _shellNavigatorProfileKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

  GoRouter getRouter(BuildContext context) {
    final userCubit = context.read<IUserCubit>();

    String? redirect(BuildContext context, GoRouterState? state) {
      if (userCubit.state is UserUnauthorized) {
        return AuthPage.route;
      }

      return null;
    }

    return GoRouter(
      initialLocation: redirect(context, null) ?? "/home/profile_page",
      redirect: redirect,
      refreshListenable: userCubit.stream.toListenable(),
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: AuthPage.route,
          builder: (context, state) => const AuthPage(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return CupertinoNestedScaffold(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              initialLocation: "/home/profile_page",
              navigatorKey: _shellNavigatorProfileKey,
              routes: [
                GoRoute(
                  path: "/home",
                  pageBuilder: (context, state) => const NoTransitionPage(
                    child: SizedBox.shrink(),
                  ),
                  routes: [
                    GoRoute(
                      path: "1",
                      builder: (context, state) => const ProfilePage(),
                    ),
                    GoRoute(
                      path: "2",
                      builder: (context, state) => const ProfilePage(),
                    ),
                    GoRoute(
                      path: "3",
                      builder: (context, state) => const ProfilePage(),
                    ),
                    GoRoute(
                      path: ProfilePage.route.replaceAll("/", ""),
                      builder: (context, state) => const ProfilePage(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig: getRouter(context),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: const Color(0XFF4631D2),
        textTheme: context.cupertinoTheme.textTheme.copyWith(
          textStyle: GoogleFonts.manropeTextTheme().bodyMedium,
        ),
      ),
    );
  }
}
