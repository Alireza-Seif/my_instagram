import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://mobilemasters.ir/apps/instagram/')
@JsonSerializable()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('posts.php')
  Future<HttpResponse> getPosts();
}
