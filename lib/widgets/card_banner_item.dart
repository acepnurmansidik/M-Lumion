import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class CardBannerItem extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final String imgUrl;
  final EdgeInsets margin;
  final double widthSize;
  final double heightSize;
  const CardBannerItem({
    super.key,
    required this.onPressed,
    required this.title,
    required this.imgUrl,
    this.widthSize = 110.9,
    this.heightSize = 160,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: heightSize - 7,
        width: widthSize,
        margin: margin,
        padding: const EdgeInsets.only(top: 120),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imgUrl),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, kSecondaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: title != ""
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
