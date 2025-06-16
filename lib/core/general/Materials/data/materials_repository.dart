import 'package:student_app/core/database/database_functions.dart';
import 'package:student_app/features/home/data/model/home_model.dart';

class MaterialsRepository {
  MaterialsRepository();

  Future<List<MaterialData>> getMaterials() async {
    final List<MaterialData> materials =
        await DataBaseFunctions().getMaterialsAsModels();
    return materials;
  }
}
