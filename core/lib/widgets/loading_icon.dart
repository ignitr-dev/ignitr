part of "package:core/core.dart";

class LoadingIcon extends StatelessWidget {
  final double? height;
  final Color? color;
  final bool circular;

  const LoadingIcon({super.key, this.height, this.color, this.circular = false});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      circular ? assetIcon("loading-circular.gif") : assetIcon("loading.gif"),
      height: height ?? 14.0,
      color: color,
    );
  }
}
