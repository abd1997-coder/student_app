import 'package:student_app/core/common/models/unit_model.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class GlobalFunctions {
  static bool hasUnviewableVideo(Unit unit) {
    // Check videos in this unit
    if (unit.videos != null) {
      for (var video in unit.videos!) {
        if (video.canView == false) {
          return true;
        }
      }
    }

    // Recursively check sub-units
    if (unit.units != null) {
      for (var subUnit in unit.units!) {
        if (hasUnviewableVideo(subUnit)) {
          return true;
        }
      }
    }

    return false;
  }

  static bool cleanUnit(Unit unit) {
    // Remove non-viewable videos
    unit.videos?.removeWhere((video) => video.canView == false);

    // Recursively clean sub-units
    unit.units?.removeWhere((subUnit) => !cleanUnit(subUnit));

    // Keep this unit only if it has any remaining videos or units
    final hasContent =
        (unit.videos?.isNotEmpty ?? false) || (unit.units?.isNotEmpty ?? false);
    return hasContent;
  }

  static Future<bool> doesVideoExistLocally(String videoId) async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/protected/$videoId.lockedvid';
    return File(path).exists();
  }
}
