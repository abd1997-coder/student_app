import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:student_app/features/auth/data/models/specialties_model.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

class HomeLocalDataSource {
  static Database? _database;
  static const String _databaseName = 'student_app_database.db';
  static const int _databaseVersion = 1;

  // Table names
  static const String tableMaterials = 'materials';
  static const String tableTeachers = 'teachers';
  static const String tableSpecialties = 'specialties';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Create specialties table
    await db.execute('''
      CREATE TABLE $tableSpecialties(
        id TEXT PRIMARY KEY,
        name TEXT
      )
    ''');

    // Create materials table
    await db.execute('''
      CREATE TABLE $tableMaterials(
        id TEXT PRIMARY KEY,
        name TEXT,
        specialty_id TEXT,
        image TEXT,
        price TEXT,
        is_available INTEGER,
        videosCount INTEGER,
        FOREIGN KEY (specialty_id) REFERENCES $tableSpecialties (id)
      )
    ''');

    // Create teachers table
    await db.execute('''
      CREATE TABLE $tableTeachers(
        id TEXT PRIMARY KEY,
        user_id TEXT,
        specialty_id TEXT,
        image TEXT,
        description TEXT,
        full_name TEXT,
        FOREIGN KEY (specialty_id) REFERENCES $tableSpecialties (id)
      )
    ''');
  }

  // Store home data
  Future<void> storeHomeData(HomeModel homeModel) async {
    final Database db = await database;
    await db.transaction((Transaction txn) async {
      // Clear existing data
      await txn.delete(tableMaterials);
      await txn.delete(tableTeachers);
      await txn.delete(tableSpecialties);

      // Store specialties
      if (homeModel.results.materials != null) {
        for (MaterialData material in homeModel.results.materials!) {
          if (material.specialty != null) {
            await txn.insert(tableSpecialties, <String, Object?>{
              'id': material.specialty!.id,
              'name': material.specialty!.name,
            }, conflictAlgorithm: ConflictAlgorithm.replace);
          }
        }
      }

      // Store materials
      if (homeModel.results.materials != null) {
        for (MaterialData material in homeModel.results.materials!) {
          await txn.insert(tableMaterials, <String, Object?>{
            'id': material.id,
            'name': material.name,
            'specialty_id': material.specialty?.id,
            'image': material.image,
            'price': material.price,
            'is_available': material.isAvailable == true ? 1 : 0,
            'videosCount': material.units?.length,
          }, conflictAlgorithm: ConflictAlgorithm.replace);
        }
      }

      // Store teachers
      if (homeModel.results.teachers != null) {
        for (TeacherData teacher in homeModel.results.teachers!) {
          await txn.insert(tableTeachers, <String, Object?>{
            'id': teacher.id,
            'user_id': teacher.user?.id,
            'specialty_id': teacher.specialty?.id,
            'image': teacher.image,
            'description': teacher.description,
            'full_name': teacher.user?.fullName,
          }, conflictAlgorithm: ConflictAlgorithm.replace);
        }
      }
    });
  }

  // Get home data
  Future<HomeModel?> getHomeData() async {
    final Database db = await database;
    final List<Map<String, dynamic>> materialsMaps = await db.query(
      tableMaterials,
    );
    final List<Map<String, dynamic>> teachersMaps = await db.query(
      tableTeachers,
    );
    final List<Map<String, dynamic>> specialtiesMaps = await db.query(
      tableSpecialties,
    );

    if (materialsMaps.isEmpty && teachersMaps.isEmpty) {
      return null;
    }

    // Convert specialties maps to SpecialtyResult objects
    final List<SpecialtyResult> specialties =
        specialtiesMaps
            .map(
              (Map<String, dynamic> map) =>
                  SpecialtyResult(id: map['id'], name: map['name']),
            )
            .toList();

    // Convert materials maps to MaterialData objects
    final List<MaterialData> materials =
        materialsMaps.map((Map<String, dynamic> map) {
          final specialty = specialties.firstWhere(
            (SpecialtyResult? s) => s?.id == map['specialty_id'],
            orElse: () => SpecialtyResult(id: '', name: ''),
          );
          return MaterialData(
            id: map['id'],
            name: map['name'],
            specialty: specialty,
            image: map['image'],
            price: map['price'],
            isAvailable: map['is_available'] == 1,
            videosCount: map['videosCount'],
          );
        }).toList();

    // Convert teachers maps to TeacherData objects
    final List<TeacherData> teachers =
        teachersMaps.map((Map<String, dynamic> map) {
          final specialty = specialties.firstWhere(
            (SpecialtyResult? s) => s?.id == map['specialty_id'],
            orElse: () => SpecialtyResult(id: '', name: ''),
          );
          return TeacherData(
            id: map['id'],
            specialty: specialty,
            image: map['image'],
            description: map['description'],
            fullName: map['full_name'],
          );
        }).toList();

    return HomeModel(
      results: HomeResults(materials: materials, teachers: teachers),
    );
  }
}
