import 'package:permission_handler/permission_handler.dart';

import '../../core.dart';

Future<PlatformFile?> pickImage() async {
  try {
    // Check and request storage permission
    // if (await _requestStoragePermission()) {
    // If permission is granted, pick the image
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      withData: true,
    );

    if (result != null) {
      return result.files.firstOrNull;
    }
    // } else {
    // await Permission.storage.request();
    // log('Storage permission denied');
    // }
    return null;
  } catch (e) {
    return null;
  }
}

Future<List<PlatformFile>> pickFiles() async {
  // Check and request storage permission
  if (await _requestStoragePermission()) {
    // If permission is granted, pick the image
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: <String>['pdf'],
      withData: true,
      allowMultiple: true,
    );

    if (result != null) {
      return result.files;
    }
  } else {
    log('Storage permission denied');
  }
  return <PlatformFile>[];
}

Future<bool> _requestStoragePermission() async {
  PermissionStatus status = await Permission.storage.status;
  if (!status.isGranted) {
    status = await Permission.storage.request();
  }
  return status.isGranted;
}
