import 'package:student_app/features/auth/data/models/enum_model.dart';
import 'package:student_app/features/auth/data/models/specialties_model.dart';

import '../../../core/core.dart';
import 'data.dart';

class AuthRepository {
  AuthRepository(this._dioClient);

  final DioClient _dioClient;

  Future<AuthModel> signIn({required SignInParams signInParams}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.login,
      data: signInParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> signInByCode({
    required VerifyAccountParams verifyAccountParams,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.loginByCode,
      data: verifyAccountParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> signUp({required SignUpParams signUpParams}) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.register,
      data: signUpParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<AuthModel> verifyAccount({
    required VerifyAccountParams verifyAccountParams,
  }) async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.put,
      EndPoint.verify,
      data: verifyAccountParams.toJson(),
    );
    final AuthModel authSuccessResponseModel = AuthModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return authSuccessResponseModel;
  }

  Future<void> resendVerificationCodeOnPhoneNumber({
    required String phoneNumber,
  }) async {
    await _dioClient.sendRequest(
      RequestType.post,
      EndPoint.sendVerificationCode,
      data: <String, String>{"phone_number": phoneNumber},
    );
  }

  Future<void> resetPassword({
    required String resetPasswordCode,
    required String password,
  }) async {
    await _dioClient.sendRequest(
      RequestType.put,
      EndPoint.resetPassword,
      data: <String, String>{
        "reset_password_code": resetPasswordCode,
        "password": password,
      },
    );
  }

  Future<EnumModel> grades() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.grades,
      queryParameters: <String, int>{"pagination_page_size": 50},
    );
    final EnumModel successResponseModel = EnumModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return successResponseModel;
  }

  Future<EnumModel> ganders() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.genders,
      queryParameters: <String, int>{"pagination_page_size": 50},
    );
    final EnumModel successResponseModel = EnumModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return successResponseModel;
  }

  Future<SpecialtyModel> specialties() async {
    final Response<dynamic> response = await _dioClient.sendRequest(
      RequestType.get,
      EndPoint.specialties,
      queryParameters: <String, int>{"pagination_page_size": 1000},
    );
    final SpecialtyModel successResponseModel = SpecialtyModel.fromJson(
      response.data as Map<String, dynamic>,
    );
    return successResponseModel;
  }
}
