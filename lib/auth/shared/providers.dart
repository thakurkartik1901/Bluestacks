import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/auth_notifier.dart';
import '../infrastructure/user_authenticator.dart';

final userAuthenticatorProvider = Provider(
  (ref) => UserAuthenticator(),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(userAuthenticatorProvider),
  ),
);
