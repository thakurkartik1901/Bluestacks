import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/application/auth_notifier.dart';
import '../../auth/shared/providers.dart';
import '../application/language_notifier.dart';
import '../infrastructure/cache_service.dart';
import '../shared/providers.dart';
import 'localization/localizations.dart';
import 'routes/app_router.gr.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  await CacheService.getInstance();
  CacheService.put('cursor', '');
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  final languageNotifier = ref.read(languageNotifierProvider.notifier);
  languageNotifier.updateLanguage(CacheService.get(selectedLanguageKey)!);
  return unit;
});

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: initializationProvider,
      onChange: (context, value) {},
      child: ProviderListener<AuthState>(
        provider: authNotifierProvider,
        onChange: (context, state) {
          state.maybeMap(
              orElse: () {},
              authenticated: (_) {
                appRouter.pushAndPopUntil(
                  const HomeRoute(),
                  predicate: (route) => false,
                );
              },
              unauthenticated: (_) {
                appRouter.pushAndPopUntil(
                  const LogInRoute(),
                  predicate: (route) => false,
                );
              });
        },
        child: Consumer(builder: (context, ref, child) {
          final state = ref.watch(languageNotifierProvider);
          return MaterialApp.router(
              title: 'Repo Viewer',
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              locale: state.locale, // <- Current locale
              localizationsDelegates: const [
                AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: localizedLabels.keys);
        }),
      ),
    );
  }
}
