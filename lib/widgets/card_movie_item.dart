import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/card_item.dart';

class CardMovieItem extends StatelessWidget {
  final String title;
  const CardMovieItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        bottom: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              bottom: 15,
            ),
            child: Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardItem(
                  margin: EdgeInsets.only(left: 20),
                ),
                CardItem(
                  margin: EdgeInsets.only(left: 10),
                ),
                CardItem(
                  margin: EdgeInsets.only(left: 10),
                ),
                CardItem(
                  margin: EdgeInsets.only(left: 10, right: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
