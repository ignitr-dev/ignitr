part of "package:core/core.dart";

class NotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  /// 🔹 Android channel (only used on Android)
  final AndroidNotificationChannel _channel = const AndroidNotificationChannel(
    "high_importance_channel",
    "High Importance Notifications",
    description: "Used for important notifications",
    importance: Importance.max,
  );

  Future<void> init() async {
    // 1️⃣ Request permissions (iOS + Android 13+)
    await _messaging.requestPermission();

    // 2️⃣ iOS foreground notification behavior
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // 3️⃣ Init local notifications
    const androidSettings =
        AndroidInitializationSettings("@mipmap/launcher_icon");

    const iosSettings = DarwinInitializationSettings();

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      settings: initSettings,
      onDidReceiveNotificationResponse: (response) {
        _handleLocalNotificationTap(response.payload);
      },
    );

    // 4️⃣ Create Android notification channel
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    // 5️⃣ Foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _handleForegroundMessage(message);
    });

    // 6️⃣ App opened from background via notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleRemoteMessage(message);
    });

    // 7️⃣ App opened from terminated state
    _handleInitialMessage();
  }

  /// 🔹 Handle foreground notifications
  void _handleForegroundMessage(RemoteMessage message) {
    final notification = message.notification;
    final android = message.notification?.android;

    // ✅ Android → show via local notification
    if (Platform.isAndroid && notification != null && android != null) {
      _localNotifications.show(
        id: notification.hashCode,
        title: notification.title,
        body: notification.body,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            importance: Importance.max,
            priority: Priority.high,
            icon: android.smallIcon,
          ),
        ),
        payload: jsonEncode(message.data),
      );
    }

    // ✅ iOS → handled automatically via presentation options
  }

  /// 🔹 Handle app opened from terminated state
  Future<void> _handleInitialMessage() async {
    final initialMessage = await _messaging.getInitialMessage();

    if (initialMessage != null) {
      _handleRemoteMessage(initialMessage);
    }
  }

  /// 🔹 Handle remote message tap (background / terminated)
  void _handleRemoteMessage(RemoteMessage message) {
    final data = message.data;

    // 👉 Example: deep linking logic
    // You can plug your router here
    // e.g., Get.toNamed(data['route'])

    debugPrint("Notification tapped (remote): $data");
  }

  /// 🔹 Handle local notification tap (Android foreground)
  Future<void> _handleLocalNotificationTap(String? payload) async {
    if (payload == null) return;

    final data = jsonDecode(payload);

    // 👉 Same deep linking logic here
    debugPrint("Notification tapped (local): $data");
  }
}
