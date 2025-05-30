
import 'managers.dart';

export 'assets/assets.dart';
export 'constant/constant.dart';
export 'duration/duration.dart';
export 'localization/localization_config.dart';
export 'location/location.dart';
export 'preference/preference.dart';
export 'service_locator/service_locator.dart';
export 'router/router.dart';
export 'responsive/responsive.dart';
export 'theme/theme.dart';
export 'permission/permission.dart';
export 'notification/notification.dart';
export 'validation/validation.dart';
class Managers {
  static PreferenceManager prefManager = getIt<PreferenceManager>();
  static AppRouter route = getIt<AppRouter>();
  static PermissionManager permissionManager = getIt<PermissionManager>();
  static NotificationManager notificationManager = getIt<NotificationManager>();
}
