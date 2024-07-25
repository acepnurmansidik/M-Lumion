import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/badge_item.dart';

class CarouselItem extends StatelessWidget {
  final String imgUrlFront;
  final String title;
  final String status;
  final double rating;
  final int totalEpisode;

  const CarouselItem({
    super.key,
    required this.imgUrlFront,
    required this.title,
    required this.rating,
    required this.status,
    required this.totalEpisode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgUrlFront),
        ),
      ),
      child: Container(
        height: 160,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, kBaseColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              height: 90,
              width: double.infinity,
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / (2 * 2.5),
              ),
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 28,
                  fontWeight: bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Row(
              children: [
                const BadgeItem(
                  title: '9.2',
                  showIcon: true,
                  marginSize: EdgeInsets.zero,
                ),
                Text.rich(
                  TextSpan(
                    text: '  |  ',
                    style: TextStyle(color: kWhiteColor, fontSize: 14),
                  ),
                ),
                BadgeItem(
                  title: 'Completed',
                  marginSize: EdgeInsets.zero,
                  paddingSize: const EdgeInsets.symmetric(horizontal: 10),
                  bgBadge: kGreenColor,
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                    children: [
                      TextSpan(
                        text: ' | ',
                        style: TextStyle(
                          color: kGreyColor,
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
                      )
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: '$totalEpisode Episode',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
