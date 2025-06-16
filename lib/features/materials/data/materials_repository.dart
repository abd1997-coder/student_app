import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:student_app/core/core.dart';
import 'package:student_app/features/materials/data/model/material_model.dart';

class MaterialRepository {
  MaterialRepository(this._dioClient);

  final DioClient _dioClient;
  Future<MaterialResponseModel> getMaterialDetail(String id) async {
    // Check internet connectivity
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      // If offline, get data from local database
      final MaterialResponseModel localData = MaterialResponseModel.fromJson(
        jsonDecode(PrefData.getMaterialData(id) ?? ''),
      );
      if (localData.results != null && localData.results?.id == id) {
        return localData;
      }
      throw Exception('No internet connection and no local data available');
    }
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      '${EndPoint.materials}$id',
    );
    final MaterialResponseModel materials = MaterialResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    PrefData.setMaterialData(id, jsonEncode(materials.toMap()));
    return materials;
  }
}
