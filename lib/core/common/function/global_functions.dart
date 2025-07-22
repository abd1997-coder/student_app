import 'package:student_app/core/common/models/unit_model.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:student_app/core/common/models/video_model.dart';

class GlobalFunctions {
  static String formatDurationString(String input) {
    final List<int> parts =
        input.split(':').map(int.parse).toList(); // [0, 8, 49]

    final int hours = parts[0];
    final int minutes = parts[1];
    final int seconds = parts[2];

    // إذا كانت المدة أقل من ساعة، تجاهل الساعات
    if (hours == 0) {
      return '$minutes:${seconds.toString().padLeft(2, '0')}';
    } else {
      return '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
    }
  }

  static bool hasUnviewableVideo(Unit unit) {
    // Check videos in this unit
    if (unit.videos != null) {
      for (VideoModel video in unit.videos!) {
        if (video.canView == false) {
          return true;
        }
      }
    }

    // Recursively check sub-units
    if (unit.units != null) {
      for (Unit subUnit in unit.units!) {
        if (hasUnviewableVideo(subUnit)) {
          return true;
        }
      }
    }

    return false;
  }

  static bool cleanUnit(Unit unit) {
    // Remove non-viewable videos
    unit.videos?.removeWhere((VideoModel video) => video.canView == false);

    // Recursively clean sub-units
    unit.units?.removeWhere((Unit subUnit) => !cleanUnit(subUnit));

    // Keep this unit only if it has any remaining videos or units
    final bool hasContent =
        (unit.videos?.isNotEmpty ?? false) || (unit.units?.isNotEmpty ?? false);
    return hasContent;
  }

  static Future<bool> doesVideoExistLocally(String videoId) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = '${dir.path}/protected/$videoId.lockedvid';
    return File(path).exists();
  }

  static String? extractYouTubeId(String url) {
    final regex = RegExp(
      r'(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/(?:watch\?(?:.*&)?v=|embed\/|v\/)|youtu\.be\/)([a-zA-Z0-9_-]{11})',
      caseSensitive: false,
    );

    final match = regex.firstMatch(url);
    return match != null ? match.group(1) : null;
  }
}
