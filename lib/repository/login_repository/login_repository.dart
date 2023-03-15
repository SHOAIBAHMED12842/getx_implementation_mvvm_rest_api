

import 'dart:ui';

import 'package:getx_implementation_mvvm_rest_api/data/network/network_api_services.dart';
import 'package:getx_implementation_mvvm_rest_api/res/app_url/app_url.dart';

class LoginRepository {

  final _apiService  = NetworkApiServices() ;


  Future<dynamic> loginApi(var data) async{
    dynamic response = await _apiService.postApi(data, AppUrl.loginApi);
    return response ;
  }



}