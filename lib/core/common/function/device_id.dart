import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

Future<String> getDeviceId() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String deviceId = "";
  if (Platform.isAndroid) {
    AndroidDeviceInfo info = (await deviceInfoPlugin.androidInfo);
    deviceId = info.id;
  } else {
    deviceId = (await deviceInfoPlugin.iosInfo).identifierForVendor ?? "";
  }

  return deviceId;
}
