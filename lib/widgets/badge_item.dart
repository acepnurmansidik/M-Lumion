import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class BadgeItem extends StatelessWidget {
  final String title;
  final bool showIcon;
  final Color bgBadge;
  final EdgeInsets marginSize;
  final EdgeInsets paddingSize;
  final Icon iconBadge;

  const BadgeItem({
    super.key,
    required this.title,
    this.bgBadge = Colors.transparent,
    this.marginSize = const EdgeInsets.symmetric(vertical: 10),
    this.paddingSize = EdgeInsets.zero,
    this.iconBadge = const Icon(
      Icons.star_rounded,
      size: 20,
      color: Colors.yellow,
    ),
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: marginSize,
      padding: paddingSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgBadge,
      ),
      child: Row(
        children: [
          showIcon ? iconBadge : const SizedBox(),
          Container(
            child: Text(
              '$title',
              style: whiteTextStyle.copyWith(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
