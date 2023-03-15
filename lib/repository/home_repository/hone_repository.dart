

import 'dart:ui';

import 'package:getx_implementation_mvvm_rest_api/data/network/network_api_services.dart';
import 'package:getx_implementation_mvvm_rest_api/models/home/user_list_model.dart';
import 'package:getx_implementation_mvvm_rest_api/res/app_url/app_url.dart';

class HomeRepository {

  final _apiService  = NetworkApiServices() ;

  Future<UserListModel> userListApi() async{
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response) ;
  }


}