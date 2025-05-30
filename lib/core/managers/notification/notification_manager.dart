import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../core.dart';

abstract interface class NotificationManager {
  Future<void> initializeLocalNotification();

  Future<void> handleForegroundNotification(RemoteMessage message);

  Future<String> getFcmToken();
}

class NotificationManagerImpl implements NotificationManager {
  static final FlutterLocalNotificationsPlugin notificationPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Future<void> initializeLocalNotification() async {
    // show message using local notification
    const InitializationSettings initialSettings = InitializationSettings(
      android: AndroidInitializationSettings(
        '@drawable/ic_stat_logo',
      ),
      iOS: DarwinInitializationSettings(),
    );
    notificationPlugin.initialize(initialSettings,
        onDidReceiveNotificationResponse: (NotificationResponse details) {});
  }

  @override
  Future<void> handleForegroundNotification(RemoteMessage message) async {
    // Download the image if the URL is provided
    final Uint8List? imageBytes = message.data['image'] != null
        ? await downloadImage(message.data['image'])
        : null;

    // Prepare BigPictureStyleInformation if image is available
    DefaultStyleInformation styleInformation = imageBytes != null
        ? BigPictureStyleInformation(
            ByteArrayAndroidBitmap(imageBytes),
            contentTitle: message.notification?.title,
            summaryText: message.notification?.body,
          )
        : BigTextStyleInformation(message.notification?.body ?? "",
            contentTitle: message.notification?.title);

    // show message using local notification
    NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'channel_id',
        'channel_name',
        importance: Importance.max,
        priority: Priority.high,
        styleInformation: styleInformation,
        icon: '@drawable/ic_stat_logo',
        color: Palette.primary,
      ),
      iOS: const DarwinNotificationDetails(
        presentSound: true,
      ),
    );

    notificationPlugin.show(
      DateTime.now().microsecond,
      message.notification?.title ?? '',
      message.notification?.body ?? '',
      notificationDetails,
      payload: jsonEncode(message.data),
    );
  }

  @override
  Future<String> getFcmToken() async {
    final String fcmToken = await FirebaseMessaging.instance.getToken() ?? '';

    log('get FCM token $fcmToken');
    return fcmToken;
  }
}
