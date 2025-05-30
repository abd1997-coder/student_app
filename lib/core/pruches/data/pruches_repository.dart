import '../../../core/core.dart';

class PruchesRepository {
  PruchesRepository(this._dioClient);

  final DioClient _dioClient;

  Future<void> buyObject({
    required String id,
    required PruchesType pruchesType,
  }) async {
    await _dioClient.sendRequest(
      RequestType.post,
      getEndpointByType(pruchesType),
      data: {"object_id": id},
    );
    return;
  }

  String getEndpointByType(PruchesType pruchesType) {
    String url = "";
    if (pruchesType == PruchesType.material) {
      url = EndPoint.buyMaterial;
    }
    if (pruchesType == PruchesType.unit) {
      url = EndPoint.buyUnit;
    }
    if (pruchesType == PruchesType.attachment) {
      url = EndPoint.buyUnitattachment;
    }
    if (pruchesType == PruchesType.video) {
      url = EndPoint.buyUnitvideo;
    }
    return url;
  }
}
