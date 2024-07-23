import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class CardItem extends StatelessWidget {
  final bool isBanner;

  final String btnCardTitle;
  final Function() onPressed;

  final String title;
  final String imgUrl;
  final bool crossAxisCenter;
  final bool isCircle;
  final bool isPlay;
  final EdgeInsets margin;
  final double widthSize;
  final double heightSize;

  const CardItem({
    super.key,
    this.isBanner = false,
    this.btnCardTitle = "",
    required this.onPressed,
    required this.title,
    required this.imgUrl,
    this.crossAxisCenter = false,
    this.isCircle = false,
    this.isPlay = false,
    this.widthSize = 110.9,
    this.heightSize = 160,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      height: heightSize,
      margin: margin,
      child: Column(
        crossAxisAlignment: crossAxisCenter
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Container(
            width: widthSize,
            padding: EdgeInsets.symmetric(
              vertical: (heightSize / 2) - (2 * 22),
              horizontal: (widthSize / 2) - (2 * 10),
            ),
            height: isCircle ? widthSize : 110,
            margin: const EdgeInsets.only(bottom: 7),
            decoration: isCircle
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgUrl),
                    ),
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgUrl),
                    ),
                  ),
            child: isPlay
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [Colors.transparent, kBaseColor],
                      ),
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 30,
                      color: kWhiteColor,
                    ),
                  )
                : const SizedBox(),
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),

          // NOTE: BTN CARD
          btnCardTitle != ""
              ? Container(
                  height: 40,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: onPressed,
                    child: Text(
                      btnCardTitle,
                      style: greenTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
