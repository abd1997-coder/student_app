import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Singleton instance
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  DatabaseHelper._privateConstructor();

  static Database? _database;

  static const String _databaseName = 'student_app_database.db';
  static const int _databaseVersion = 1;

  // Table names
  static const String tableMaterials = 'materials';
  static const String tableTeachers = 'teachers';
  static const String tableSpecialties = 'specialties';
  static const String tableProfile = 'profile';
  static const String tableUnits = 'units';
  static const String tableVideos = 'videos';

  // Getter for the database
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableSpecialties(
        id TEXT PRIMARY KEY,
        name TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableMaterials(
        id TEXT,
        name TEXT,
        image TEXT,
        price TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableTeachers(
        id TEXT PRIMARY KEY,
        user_id TEXT,
        specialty_id TEXT,
        image TEXT,
        description TEXT,
        full_name TEXT,
        material_id TEXT,
        unit_id TEXT,
        FOREIGN KEY (specialty_id) REFERENCES $tableSpecialties (id),
        FOREIGN KEY (material_id) REFERENCES $tableMaterials (id),
        FOREIGN KEY (unit_id) REFERENCES $tableUnits (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableUnits(
        id TEXT PRIMARY KEY,
        name TEXT,
        specialty_id TEXT,
        image TEXT,
        price TEXT,
        is_available INTEGER,
        video_count INTEGER,
        material_id TEXT,
        parent_unit_id TEXT,
        FOREIGN KEY (specialty_id) REFERENCES $tableSpecialties (id),
        FOREIGN KEY (material_id) REFERENCES $tableMaterials (id),
        FOREIGN KEY (parent_unit_id) REFERENCES $tableUnits (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableVideos(
        id TEXT PRIMARY KEY,
        title TEXT,
        video_url TEXT,
        youtube_url TEXT,
        duration TEXT,
        unit_id TEXT,
        can_view INTEGER,
        price TEXT,
        encrypted_path TEXT,
        FOREIGN KEY (unit_id) REFERENCES $tableUnits (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableProfile(
        id TEXT PRIMARY KEY,
        phone_number TEXT,
        phone_number_verified INTEGER,
        email TEXT,
        date_joined TEXT,
        first_login TEXT,
        last_login TEXT,
        is_active INTEGER,
        full_name TEXT,
        type INTEGER,
        gender INTEGER,
        birth_date TEXT,
        parent_phone_number TEXT,
        specialty_id TEXT,
        grade INTEGER,
        balance TEXT,
        FOREIGN KEY (specialty_id) REFERENCES $tableSpecialties (id)
      )
    ''');
  }
}
