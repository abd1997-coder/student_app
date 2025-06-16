import 'package:sqflite/sqflite.dart';
import 'package:student_app/core/common/models/teacher_model.dart';
import 'package:student_app/core/common/models/unit_model.dart';
import 'package:student_app/core/common/models/video_model.dart';
import 'package:student_app/core/database/database_helper.dart';
import 'package:student_app/features/auth/data/models/specialties_model.dart';
import 'package:student_app/features/home/data/model/home_model.dart';
import 'package:student_app/features/profile/data/model/profile_model.dart';

class DataBaseFunctions {
  // Store home data
  Future<void> storeHomeData(HomeModel homeModel) async {
    final Database db = await DatabaseHelper.instance.database;
    try {
      await db.transaction((Transaction txn) async {
        // Clear existing data
        await txn.delete(DatabaseHelper.tableMaterials);
        await txn.delete(DatabaseHelper.tableTeachers);
        await txn.delete(DatabaseHelper.tableSpecialties);

        // Store specialties
        if (homeModel.results.materials != null) {
          for (MaterialData material in homeModel.results.materials!) {
            if (material.specialty != null) {
              await txn.insert(
                DatabaseHelper.tableSpecialties,
                <String, Object?>{
                  'id': material.specialty!.id,
                  'name': material.specialty!.name,
                },
                conflictAlgorithm: ConflictAlgorithm.replace,
              );
            }
          }
        }

        // Store materials
        if (homeModel.results.materials != null) {
          for (MaterialData material in homeModel.results.materials!) {
            await txn.insert(
              DatabaseHelper.tableMaterials,
              <String, Object?>{
                'id': material.id,
                'name': material.name,
                'image': material.image,
                'price': material.price,
                'is_available': material.isAvailable == true ? 1 : 0,
              },
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
          }
        }

        // Store teachers
        if (homeModel.results.teachers != null) {
          for (TeacherData teacher in homeModel.results.teachers!) {
            await txn.insert(
              DatabaseHelper.tableTeachers,
              <String, Object?>{
                'id': teacher.id,
                'user_id': teacher.user?.id,
                'specialty_id': teacher.specialty?.id,
                'image': teacher.image,
                'description': teacher.description,
                'full_name': teacher.user?.fullName,
              },
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
          }
        }
      });
    } catch (e) {
      print('Error in storeHomeData');
      print(e);
    }
  }

  // Get home data
  Future<HomeModel?> getHomeData() async {
    final Database db = await DatabaseHelper.instance.database;

    final List<Map<String, dynamic>> materialsMaps = await db.query(
      DatabaseHelper.tableMaterials,
    );
    final List<Map<String, dynamic>> teachersMaps = await db.query(
      DatabaseHelper.tableTeachers,
    );
    final List<Map<String, dynamic>> specialtiesMaps = await db.query(
      DatabaseHelper.tableSpecialties,
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
          final SpecialtyResult specialty = specialties.firstWhere(
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
          final SpecialtyResult specialty = specialties.firstWhere(
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

  // Add methods to store and retrieve profile data
  Future<void> storeProfileData(ProfileResults profileResults) async {
    final Database db = await DatabaseHelper.instance.database;

    await db.transaction((Transaction txn) async {
      // Clear existing profile data
      await txn.delete(DatabaseHelper.tableProfile);

      final User user = profileResults.results;
      final Student? student = user.student;

      // Store profile data
      await txn.insert(DatabaseHelper.tableProfile, <String, Object?>{
        'id': user.id,
        'phone_number': user.phoneNumber,
        'phone_number_verified': user.phoneNumberVerified ? 1 : 0,
        'email': user.email,
        'date_joined': user.dateJoined.toIso8601String(),
        'first_login': user.firstLogin.toIso8601String(),
        'last_login': user.lastLogin.toIso8601String(),
        'is_active': user.isActive ? 1 : 0,
        'full_name': user.fullName,
        'type': user.type,
        'gender': user.gender,
        'birth_date': user.birthDate,
        'parent_phone_number': student?.parentPhoneNumber,
        'specialty_id': student?.speciality?.id,
        'grade': student?.grade,
        'balance': student?.balance,
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    });
  }

  Future<ProfileResults?> getProfileData() async {
    final Database db = await DatabaseHelper.instance.database;

    final List<Map<String, dynamic>> profileMaps = await db.query(
      DatabaseHelper.tableProfile,
    );

    if (profileMaps.isEmpty) {
      return null;
    }

    final Map<String, dynamic> profileMap = profileMaps.first;

    // Create Student object if specialty_id exists
    Student? student;
    if (profileMap['specialty_id'] != null) {
      student = Student(
        parentPhoneNumber: profileMap['parent_phone_number'] as String,
        grade: profileMap['grade'] as int?,
        balance: profileMap['balance'] as String,
      );
    }

    // Create User object
    final User user = User(
      id: profileMap['id'] as String,
      phoneNumber: profileMap['phone_number'] as String,
      phoneNumberVerified: profileMap['phone_number_verified'] == 1,
      email: profileMap['email'] as String,
      dateJoined: DateTime.parse(profileMap['date_joined'] as String),
      firstLogin: DateTime.parse(profileMap['first_login'] as String),
      lastLogin: DateTime.parse(profileMap['last_login'] as String),
      isActive: profileMap['is_active'] == 1,
      fullName: profileMap['full_name'] as String,
      type: profileMap['type'] as int,
      gender: profileMap['gender'] as int,
      birthDate: profileMap['birth_date'] as String,
      groups: [], // We don't store groups in local database
      allPermissionsFullNames:
          [], // We don't store permissions in local database
      student: student,
      teacher: null, // We don't store teacher data in local database
    );

    return ProfileResults(
      code: 200, // Default success code
      message: 'Success',
      results: user,
    );
  }

  Future<int> insertSpecialtyModel(SpecialtyResult model) async {
    return await insertIfNotExists(
      DatabaseHelper.tableSpecialties,
      model.id,
      model.toMap(),
    );
  }

  Future<int> insertMaterialModel(MaterialData model) async {
    return await insertIfNotExists(
      DatabaseHelper.tableMaterials,
      model.id!,
      model.toMap(),
    );
  }

  Future<int> insertUnitModel(Unit model) async {
    return await insertIfNotExists(
      DatabaseHelper.tableUnits,
      model.id!,
      model.toMap(),
    );
  }

  Future<int> insertVideoModel(VideoModel model) async {
    return await insertIfNotExists(
      DatabaseHelper.tableVideos,
      model.id!,
      model.toMap(),
    );
  }

  Future<int> insertTeacherModel(TeacherModel model) async {
    return await insertIfNotExists(
      DatabaseHelper.tableTeachers,
      model.id!,
      model.toMap(),
    );
  }

  Future<List<MaterialData>> getMaterialsAsModels() async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableMaterials,
    );
    return maps
        .map((Map<String, Object?> e) => MaterialData.fromJson(e))
        .toList();
  }

  Future<List<Unit>> getUnitsAsModels(String materialId) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableUnits,
      where: 'material_id = ?',
      whereArgs: <Object?>[materialId],
    );
    return maps.map((Map<String, Object?> e) => Unit.fromJson(e)).toList();
  }

  Future<List<VideoModel>> getVideosAsModels(String unitId) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableVideos,
      where: 'unit_id = ?',
      whereArgs: <Object?>[unitId],
    );
    return maps
        .map((Map<String, Object?> e) => VideoModel.fromJson(e))
        .toList();
  }

  Future<List<TeacherModel>> getTeachersByMaterialAsModels(
    String materialId,
  ) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableTeachers,
      where: 'material_id = ?',
      whereArgs: <Object?>[materialId],
    );
    return maps
        .map((Map<String, Object?> e) => TeacherModel.fromJson(e))
        .toList();
  }

  Future<List<TeacherModel>> getTeachersByUnitAsModels(String unitId) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableTeachers,
      where: 'unit_id = ?',
      whereArgs: <Object?>[unitId],
    );
    return maps
        .map((Map<String, Object?> e) => TeacherModel.fromJson(e))
        .toList();
  }

  Future<List<User>> getProfileAsModels() async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableProfile,
    );
    return maps.map((Map<String, Object?> e) => User.fromJson(e)).toList();
  }

  Future<List<SpecialtyResult>> getSpecialtiesAsModels() async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableSpecialties,
    );
    return maps
        .map((Map<String, Object?> e) => SpecialtyResult.fromJson(e))
        .toList();
  }

  Future<List<TeacherModel>> getTeachersAsModels() async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.query(
      DatabaseHelper.tableTeachers,
    );
    return maps
        .map((Map<String, Object?> e) => TeacherModel.fromJson(e))
        .toList();
  }

  Future<List<VideoModel>> getVideosByMaterialAsModels(
    String materialId,
  ) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> maps = await db.rawQuery(
      '''
      SELECT v.* FROM ${DatabaseHelper.tableVideos} v
      JOIN ${DatabaseHelper.tableUnits} u ON v.unit_id = u.id
      WHERE u.material_id = ?
    ''',
      <Object?>[materialId],
    );
    return maps
        .map((Map<String, Object?> e) => VideoModel.fromJson(e))
        .toList();
  }

  Future<void> clearTable(String table) async {
    final Database db = await DatabaseHelper.instance.database;
    await db.delete(table);
  }

  Future<void> clearAllTables() async {
    final Database db = await DatabaseHelper.instance.database;
    await db.delete(DatabaseHelper.tableVideos);
    await db.delete(DatabaseHelper.tableUnits);
    await db.delete(DatabaseHelper.tableTeachers);
    await db.delete(DatabaseHelper.tableMaterials);
    await db.delete(DatabaseHelper.tableSpecialties);
    await db.delete(DatabaseHelper.tableProfile);
  }

  Future<int> insertIfNotExists(
    String table,
    String id,
    Map<String, dynamic> row,
  ) async {
    final Database db = await DatabaseHelper.instance.database;
    final List<Map<String, Object?>> result = await db.query(
      table,
      where: 'id = ?',
      whereArgs: <Object?>[id],
    );
    if (result.isEmpty) {
      return await db.insert(table, row);
    } else {
      return 0;
    }
  }
}
