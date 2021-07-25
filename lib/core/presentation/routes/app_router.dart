import 'package:auto_route/auto_route.dart';

import '../../../auth/presentation/log_in_page.dart';
import '../../../home/core/presentation/home_page.dart';
import '../../../splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: LogInPage, path: '/log-in'),
    MaterialRoute(page: HomePage, path: '/home'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
