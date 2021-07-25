import 'package:dio/dio.dart';

import 'user_dto.dart';

class UserRemoteService {
  final Dio _dio;

  UserRemoteService(this._dio);

  Future<UserDTO> fetchUser() async {
    try {
      final response = await _dio.getUri(
        Uri.parse(
            'https://bluestacks-a8c28-default-rtdb.firebaseio.com/user.json'),
      );
      final UserDTO _userDTO =
          UserDTO.fromJson(response.data as Map<String, dynamic>);
      return _userDTO;
    } catch (e) {
      rethrow;
    }
  }
}
