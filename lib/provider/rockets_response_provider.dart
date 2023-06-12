import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/response/rocket_response.dart';
import '../services/api_network.dart';

class RocketsApiResponse {
  final apiNetwork =
      ApiNetwork(Dio(BaseOptions(contentType: 'application/json')));

  Future<List<RocketResponse>> getResponse() async {
    var response = await apiNetwork.getRockets();
    if (response.isNotEmpty) {
      return response;
    }
    throw Exception('e');
  }
}

final rocketsRestApiProvider =
    Provider<RocketsApiResponse>((ref) => RocketsApiResponse());

final rocketsResponseProvider =
    FutureProvider<List<RocketResponse>>((ref) async {
  return ref.watch(rocketsRestApiProvider).getResponse();
});
