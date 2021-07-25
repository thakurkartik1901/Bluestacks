import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:bluestacks/home/user/domain/user.dart';
import 'package:bluestacks/home/user/infrastructure/user_repository.dart';

part 'user_notifier.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState({
    @Default(User(
      name: '',
      rating: '',
      percentage: '',
      played: '',
      won: '',
    ))
        User user,
    @Default(false)
        bool isLoading,
  }) = _UserState;
}

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _userRepository;

  UserNotifier(this._userRepository) : super(const UserState());

  Future<void> fetchUser() async {
    state = state.copyWith(isLoading: true);
    final successOrFailure = await _userRepository.fetchUser();
    successOrFailure.fold(
      (l) => state = state.copyWith(
        isLoading: false,
      ),
      (r) => state = state.copyWith(
        user: r,
        isLoading: false,
      ),
    );
  }
}
