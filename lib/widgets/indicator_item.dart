import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';

class IndicatorItem extends StatelessWidget {
  final List movieList;
  final int indexActive;
  final Function() onPressed;

  const IndicatorItem(
      {super.key,
      required this.movieList,
      required this.indexActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 125,
        margin: EdgeInsets.only(
          top: 315,
          left: MediaQuery.of(context).size.width / (2 * 0.71),
        ),
        padding: EdgeInsets.only(
          bottom: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.play_arrow_rounded,
                color: kWhiteColor,
                size: 35,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: movieList.asMap().entries.map((item) {
                return Container(
                  width: indexActive == item.key ? 12 : 6,
                  height: 6,
                  margin: const EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: indexActive == item.key ? kWhiteColor : kGreyColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
