part of "models.dart";

class SettingModel extends Model {
  SettingModel({
    this.theme = "system",
  });

  String theme;

  @override
  SettingModel copyWith({
    String? theme,
  }) =>
      SettingModel(
        theme: theme ?? this.theme,
      );

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        theme: json["theme"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "theme": theme,
      };

  @override
  Map<String, dynamic> toRequestBody({Map<String, dynamic>? attributes}) {
    throw UnimplementedError();
  }
}
