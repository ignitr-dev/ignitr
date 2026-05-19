part of "../settings.dart";

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final SettingsController controller = SettingsController.instance;
  final settingStore = SettingStore.instance;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MasterLayout(
        title: "Settings",
        body: Padding(
          padding: EdgeInsets.all(kSpacer3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Theme",
                style: TextStyl.body(context).sm.regular,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => controller.swithThemeTo("system"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: settingStore.themeIsSystem
                                  ? AppColors.accent(context)
                                  : Colors.transparent,
                              width: 2),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.brightness_4_rounded, size: 32),
                            Text(
                              "System",
                              style: TextStyl.body(context).sm.regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: kSpacer2),
                  Expanded(
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => controller.swithThemeTo("light"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: settingStore.themeIsLight
                                  ? AppColors.accent(context)
                                  : Colors.transparent,
                              width: 2),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.brightness_5_rounded, size: 32),
                            Text(
                              "Light",
                              style: TextStyl.body(context).sm.regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: kSpacer2),
                  Expanded(
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => controller.swithThemeTo("dark"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: settingStore.themeIsDark
                                  ? AppColors.accent(context)
                                  : Colors.transparent,
                              width: 2),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.brightness_2_rounded, size: 32),
                            Text(
                              "Dark",
                              style: TextStyl.body(context).sm.regular,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: kSpacer),
              Text(
                "Account",
                style: TextStyl.body(context).sm.regular,
              ),
              const SizedBox(height: kSpacer1),
              InkWell(
                onTap: () => {},
                splashFactory: NoSplash.splashFactory,
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.secondarySurface(context),
                    borderRadius: BorderRadius.circular(kSpacer2),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: kSpacer3, horizontal: kSpacer),
                  child: Text(
                    "Logout",
                    style: TextStyl.label(context).md.regular,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
