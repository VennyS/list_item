import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum BadgeVariant {
  number,
  icon,
  empty,
}

class BadgeWidget extends StatelessWidget {
  final Widget? mainWidget;
  final Color? backgroundColor;
  final BadgeVariant variant;
  const BadgeWidget(
      {super.key,
      this.mainWidget,
      this.backgroundColor,
      this.variant = BadgeVariant.number})
      : assert(mainWidget is Icon ||
            mainWidget is Text ||
            mainWidget is SvgPicture);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
      padding: variant == BadgeVariant.number
          ? const EdgeInsets.symmetric(horizontal: 8.5, vertical: 6)
          : const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10000),
        color: backgroundColor,
      ),
      child: mainWidget != null ? mainWidget! : const SizedBox.shrink(),
    );
  }
}
