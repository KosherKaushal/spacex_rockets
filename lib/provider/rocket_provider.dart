import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/rocket_database.dart';
import '../network/response/rocket_response.dart';
import '../services/api_network.dart';
import '../services/rocket_repository.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final apiServiceProvider = Provider<ApiNetwork>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiNetwork(dio);
});

final rocketDatabaseProvider = Provider<RocketDatabase>((ref) {
  return RocketDatabase();
});

final rocketRepositoryProvider = Provider<RocketRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  final rocketDatabase = ref.watch(rocketDatabaseProvider);
  return RocketRepository(apiService, rocketDatabase);
});

final rocketsProvider = FutureProvider<List<RocketResponse>>((ref) async {
  final rocketRepository = ref.watch(rocketRepositoryProvider);
  return await rocketRepository.fetchRockets();
});
