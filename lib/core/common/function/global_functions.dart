import 'package:student_app/core/common/models/unit_model.dart';

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
}
