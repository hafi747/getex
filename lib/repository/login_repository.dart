import 'package:getx_mvvm/data/network/network_apiservices.dart';
import 'package:getx_mvvm/repository/app_url.dart';

class LoginRepository {
  final apirepository = NetworkApiservices();
  Future<dynamic> loginApi(dynamic data) async {
    dynamic responce = await apirepository.postApi(AppUrl.loginApi, data);
    return responce;
  }
}
