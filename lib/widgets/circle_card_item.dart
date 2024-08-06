import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class CircleCardItem extends StatelessWidget {
  final Function() onPressed;
  final Function() onTapDirect;

  final String title;
  final String imgUrl;
  final bool crossAxisCenter;
  final EdgeInsets margin;
  final double widthSize;
  const CircleCardItem({
    super.key,
    required this.onPressed,
    required this.onTapDirect,
    required this.title,
    required this.imgUrl,
    this.crossAxisCenter = false,
    this.widthSize = 110.9,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      height: 145,
      margin: margin,
      child: Column(
        children: [
          GestureDetector(
            onTap: onTapDirect,
            child: Column(
              children: [
                Container(
                  height: widthSize,
                  margin: const EdgeInsets.only(bottom: 7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgUrl),
                    ),
                  ),
                ),
                Text(
                  title,
                  style:
                      whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
