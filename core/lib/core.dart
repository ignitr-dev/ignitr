// From Flutter/Dart SDKs
import "dart:async";
import "dart:convert";
import "dart:io";
import "dart:math";

// Third Party
import "package:firebase_core/firebase_core.dart";
import "package:firebase_messaging/firebase_messaging.dart";
import "package:flutter/material.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:get_storage/get_storage.dart";
import "package:http/http.dart" as http;
import "package:logger/logger.dart";
import "package:recase/recase.dart";
import "package:get/get.dart";

// System
part "design/colors/app_color_model.dart";
part "design/colors/app_colors.dart";
part "design/colors/color_palette.dart";
part "design/spacing/sizes.dart";
part "design/theme/app_theme.dart";
part "design/theme/dark_theme.dart";
part "design/theme/light_theme.dart";
part "design/typography/text_styl.dart";
part "network/api_client.dart";
part "network/api_response.dart";
part "network/app_http_overrides.dart";
part "services/base_service.dart";
part "services/notification_service.dart";
part "services/storage.dart";
part "utils/helpers.dart";
part "utils/keyboard.dart";
part "utils/str.dart";
part "utils/toastr.dart";
part "utils/validator.dart";
part "widgets/loading_icon.dart";
part "widgets/buttons/button.dart";
part "widgets/buttons/button_icon.dart";
part "widgets/buttons/controller.dart";
part "widgets/forms/form_input.dart";
part "widgets/forms/form_input_date.dart";
part "widgets/forms/form_input_time.dart";
part "widgets/forms/form_label.dart";
part "widgets/forms/form_select.dart";
part "stores/persistent_store.dart";
part "stores/store.dart";
part "ignitr.dart";
part "ignitr_config.dart";
