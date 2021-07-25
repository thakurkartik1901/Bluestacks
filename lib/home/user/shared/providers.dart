import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/user_notifier.dart';
import '../infrastructure/user_remote_service.dart';
import '../infrastructure/user_repository.dart';

final dioProvider = Provider((ref) => Dio());

final userRemoteServiceProvider = Provider(
  (ref) => UserRemoteService(ref.watch(dioProvider)),
);

final userRepositoryProvider = Provider(
  (ref) => UserRepository(ref.watch(userRemoteServiceProvider)),
);

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>(
  (ref) => UserNotifier(
    ref.watch(userRepositoryProvider),
  ),
);
