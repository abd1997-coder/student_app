import 'package:student_app/core/core.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';

class MaterialRepository {
  MaterialRepository(this._dioClient);

  final DioClient _dioClient;

  Future<MaterialResponseModel> getMaterialDetail(String id) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      '${EndPoint.materials}$id',
    );
    final MaterialResponseModel materials = MaterialResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return materials;
  }
}
