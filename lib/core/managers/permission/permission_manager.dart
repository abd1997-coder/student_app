import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

abstract interface class PermissionManager {
  Future<void> requestNotificationPermission();
}

class PermissionManagerImpl implements PermissionManager {
  @override
  Future<void> requestNotificationPermission() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    final NotificationSettings settings = await messaging.requestPermission();
    debugPrint('User granted permission: ${settings.authorizationStatus}');
  }
}
