part of "package:core/core.dart";

class Watch<S extends Store> extends StatelessWidget {
  final S store;
  final Widget Function(
    BuildContext context,
    S store,
  ) builder;

  final Widget? child;

  const Watch({
    super.key,
    required this.store,
    required this.builder,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: store,
      builder: (context, _, child) {
        return builder(context, store);
      },
      child: child,
    );
  }
}
