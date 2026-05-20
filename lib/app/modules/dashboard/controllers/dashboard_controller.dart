part of "../dashboard.dart";

class DashboardController extends AppController {
  static DashboardController get instance {
    if (!Get.isRegistered<DashboardController>()) {
      Get.put(DashboardController());
    }

    return Get.find<DashboardController>();
  }
}
