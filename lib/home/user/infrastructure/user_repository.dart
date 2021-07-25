import 'package:dartz/dartz.dart';

import '../domain/user.dart';
import '../domain/user_failure.dart';
import 'user_remote_service.dart';

class UserRepository {
  final UserRemoteService _remoteService;

  UserRepository(this._remoteService);

  Future<Either<UserFailure, User>> fetchUser() async {
    try {
      final user = await _remoteService.fetchUser();
      return right(user.toDomain());
    } catch (e) {
      return left(const UserFailure.api(500));
    }
  }
}
