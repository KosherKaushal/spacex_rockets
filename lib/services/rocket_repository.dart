import 'package:spacex_rockets/services/api_network.dart';

import '../database/rocket_database.dart';
import '../network/response/rocket_response.dart';

class RocketRepository {
  final ApiNetwork _apiNetwork;
  final RocketDatabase _rocketDatabase;

  RocketRepository(this._apiNetwork, this._rocketDatabase);

  Future<List<RocketResponse>> fetchRockets() async {
    try {
      final response = await _apiNetwork.getRockets();
      final rockets = response;

      await _rocketDatabase.clearRockets();
      await _rocketDatabase.insertRockets(rockets);

      return rockets;
    } catch (e) {
      throw Exception('Failed to fetch rockets: $e');
    }
  }
}
