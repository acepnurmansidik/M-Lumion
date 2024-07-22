import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class CardItem extends StatelessWidget {
  final EdgeInsets margin;
  const CardItem({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.9,
      height: 160,
      margin: margin,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img_scroll1.png'),
              ),
            ),
          ),
          Text(
            'Boku No Hero Academia',
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
