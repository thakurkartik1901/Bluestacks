import 'package:bluestacks/core/infrastructure/cache_service.dart';
import 'package:dartz/dartz.dart';

import '../domain/auth_failure.dart';

class UserAuthenticator {
  UserAuthenticator();

  bool isSignedIn() => CacheService.get('isLogin') == 'true';

  Future<Either<AuthFailure, Unit>?> login(
    String userName,
    String password,
  ) async {
    try {
      if ((userName == '9898989898' || userName == '9876543210') &&
          password == 'pass123') {
        CacheService.put('isLogin', 'true');
        return right(unit);
      } else {
        return left(const AuthFailure.invalidCredential());
      }
    } catch (e) {
      return left(const AuthFailure.server());
    }
  }
}
