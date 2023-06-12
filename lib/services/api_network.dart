import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spacex_rockets/network/response/rocket_response.dart';

part 'api_network.g.dart';

@RestApi(baseUrl: 'https://api.spacexdata.com/v4')
abstract class ApiNetwork {
  factory ApiNetwork(Dio dio, {String baseUrl}) = _ApiNetwork;

  @GET('/rockets')
  Future<List<RocketResponse>> getRockets();
}
