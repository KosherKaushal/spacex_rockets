import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:sqflite/sqflite.dart';

import '../network/response/rocket_response.dart';

class RocketDatabase {
  static final RocketDatabase _instance = RocketDatabase._internal();

  factory RocketDatabase() => _instance;

  RocketDatabase._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final documentsDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'rocket_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
  }

  Future<void> _createTables(Database db, int version) async {
    await db.execute('''
      CREATE TABLE rockets (
        id TEXT PRIMARY KEY,
    height REAL,
diameter REAL,
    mass REAL,
first_stage TEXT,
    second_stage TEXT,
engines TEXT,
    landing_legs TEXT,
payload_weights TEXT,
    flickr_images TEXT,
name TEXT,
    type TEXT,
active INTEGER,
    stages INTEGER,
boosters INTEGER,
    cost_per_launch INTEGER,
success_rate_pct INTEGER,
    first_flight INTEGER,
country TEXT,
    company TEXT,
wikipedia TEXT,
    description TEXT
      )
    ''');
  }

  Future<void> clearRockets() async {
    final db = await database;
    await db.delete('rockets');
  }

  Future<void> insertRockets(List<RocketResponse> rockets) async {
    final db = await database;
    final batch = db.batch();

    for (final rocket in rockets) {
      batch.insert('rockets', rocket.toJson());
    }

    await batch.commit();
  }

  Future<List<RocketResponse>> getRockets() async {
    final db = await database;
    final maps = await db.query('rockets');
    return List.generate(maps.length, (i) => RocketResponse.fromJson(maps[i]));
  }
}

// id TEXT PRIMARY KEY,
//     height REAL,
// diameter REAL,
//     mass REAL,
// first_stage TEXT,
//     second_stage TEXT,
// engines TEXT,
//     landing_legs TEXT,
// payload_weights TEXT,
//     flickr_images TEXT,
// name TEXT,
//     type TEXT,
// active INTEGER,
//     stages INTEGER,
// boosters INTEGER,
//     cost_per_launch INTEGER,
// success_rate_pct INTEGER,
//     first_flight INTEGER,
// country TEXT,
//     company TEXT,
// wikipedia TEXT,
//     description TEXT

///
// id TEXT PRIMARY KEY,
//     height_meters REAL,
// height_feet REAL,
//     diameter_meters REAL,
// diameter_feet REAL,
//     mass_kg INTEGER,
// mass_lb INTEGER,
//     first_stage_thrust_sea_level_kN INTEGER,
// first_stage_thrust_sea_level_lbf INTEGER,
//     first_stage_thrust_vacuum_kN INTEGER,
// first_stage_thrust_vacuum_lbf INTEGER,
//     first_stage_reusable INTEGER,
// first_stage_engines INTEGER,
//     first_stage_fuel_amount_tons REAL,
// first_stage_burn_time_sec INTEGER,
//     second_stage_thrust_kN INTEGER,
// second_stage_thrust_lbf INTEGER,
//     second_stage_payloads_composite_fairing_height_meters REAL,
// second_stage_payloads_composite_fairing_height_feet REAL,
//     second_stage_payloads_composite_fairing_diameter_meters REAL,
// second_stage_payloads_composite_fairing_diameter_feet REAL,
//     second_stage_reusable INTEGER,
// second_stage_engines INTEGER,
//     second_stage_fuel_amount_tons REAL,
// second_stage_burn_time_sec INTEGER,
//     engines_isp_sea_level INTEGER,
// engines_isp_vacuum INTEGER,
//     engines_thrust_sea_level_kN INTEGER,
// engines_thrust_sea_level_lbf INTEGER,
//     engines_thrust_vacuum_kN INTEGER,
// engines_thrust_vacuum_lbf INTEGER,
//     engines_number INTEGER,
// engines_type TEXT,
//     engines_version TEXT,
// engines_layout TEXT,
//     engines_engine_loss_max INTEGER,
// engines_propellant1 TEXT,
//     engines_propellant2 TEXT,
// engines_thrust_to_weight REAL,
//     landing_legs_number INTEGER,
// landing_legs_material TEXT,
//     payload_weights_id TEXT,
// payload_weights_name TEXT,
//     payload_weights_kg INTEGER,
// payload_weights_lb INTEGER,
//     flickr_images TEXT,
// name TEXT,
//     type TEXT,
// active INTEGER,
//     stages INTEGER,
// boosters INTEGER,
//     cost_per_launch INTEGER,
// success_rate_pct INTEGER,
//     first_flight INTEGER,
// country TEXT,
//     company TEXT,
// wikipedia TEXT,
//     description TEXT
