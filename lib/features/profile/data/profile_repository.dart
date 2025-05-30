import 'package:student_app/core/core.dart';
import 'package:student_app/features/profile/data/model/profile_model.dart';

class ProfileRepository {
  ProfileRepository(this._dioClient);

  final DioClient _dioClient;

  Future<ProfileResults> getProfile() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.profile,
    );
    final ProfileResults profileResponseModel = ProfileResults.fromJson(
      response.data as Map<String, dynamic>,
    );
    return profileResponseModel;
  }
}
