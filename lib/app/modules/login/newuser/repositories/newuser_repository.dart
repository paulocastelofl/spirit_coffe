import 'package:dio/dio.dart';
import 'package:spirit_coffe/app/core/models/user_model.dart';

import 'newuser_repository_interface.dart';

class NewUserRepository implements INewUserRepository {
  final Dio dio;
  NewUserRepository(this.dio);

  @override
  Future<UserModel> createuser(Map<String, dynamic> data) async {
    try {
      var response = await dio.post("/users", data: data);

      print(response.data.toString());
      // json.encode(data);
      // print(data);
    } catch (e) {
      print("Erro  => " + e.toString());
    }

    return null;
  }
}