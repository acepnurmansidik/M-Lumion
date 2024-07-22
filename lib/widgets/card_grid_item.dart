import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/card_item.dart';

class CardGridItem extends StatelessWidget {
  final String title;
  const CardGridItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        right: defaultMargin,
        left: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CardItem(),
              CardItem(),
              CardItem(),
              CardItem(),
              CardItem(),
              CardItem(),
            ],
          ),
        ],
      ),
    );
  }
}
