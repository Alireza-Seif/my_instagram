import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:my_instagram/network/rest_client.dart';

class ApiService extends GetxController{

  RestClient restClient = RestClient(Dio());
}