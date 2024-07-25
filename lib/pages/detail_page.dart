import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/badge_item.dart';
import 'package:lumion/widgets/card_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cardWatchItem(String title, bool isMore, Function() onTap) {
      return Container(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                bottom: 15,
              ),
              child: title != ""
                  ? Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semibold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: Container(
                            margin: EdgeInsets.only(right: defaultMargin),
                            child: Row(children: [
                              isMore
                                  ? Text(
                                      'More',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: light,
                                      ),
                                    )
                                  : const SizedBox(),
                              Icon(
                                Icons.chevron_right,
                                color: kWhiteColor,
                              ),
                            ]),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    widthSize: 200,
                    isPlay: false,
                    margin: const EdgeInsets.only(left: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CardItem(
                    title: "Made In Abyss",
                    imgUrl: 'assets/img_scroll2.png',
                    widthSize: 200,
                    isPlay: false,
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cardGridItem(String title) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          bottom: defaultMargin + 10,
        ),
        child: Column(
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
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
                CardItem(
                  title: "Boku No Hero Academia",
                  imgUrl: 'assets/img_scroll1.png',
                  onPressed: () {},
                  onTapDirect: () {},
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget movieInfo() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boku No Hero Academia: The Last Villain In Europe Diamond Museum',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            Row(
              children: [
                const BadgeItem(
                  title: '9.2',
                  bgBadge: Colors.transparent,
                  showIcon: true,
                ),
                Text(
                  ' | ',
                  style: greyTextStyle,
                ),
                BadgeItem(
                  title: 'Subtitle',
                  bgBadge: kThirdColor,
                  paddingSize: const EdgeInsets.symmetric(horizontal: 7),
                  showIcon: false,
                ),
                Text(
                  ' | ',
                  style: greyTextStyle,
                ),
                const BadgeItem(
                  title: 'Japan',
                  paddingSize: EdgeInsets.symmetric(horizontal: 7),
                  showIcon: false,
                ),
                Text(
                  ' | ',
                  style: greyTextStyle,
                ),
                const BadgeItem(
                  title: 'Romance',
                  paddingSize: EdgeInsets.symmetric(horizontal: 7),
                  showIcon: false,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Boku No Hero Academia',
                style: whiteTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: light,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.file_download,
                      color: kWhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.add,
                      color: kWhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    child: Transform.rotate(
                      angle: 4.7,
                      child: Icon(
                        Icons.exit_to_app_outlined,
                        color: kWhiteColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget movieSeason() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 10, left: defaultMargin),
                    decoration: BoxDecoration(
                      color: kThirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Season 1',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget movieEpisodes() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '11 Episodes\nVIPs watch all episodes',
                      style: whiteTextStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'More',
                      style: whiteTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                      right: 10,
                      left: defaultMargin,
                    ),
                    decoration: BoxDecoration(
                      color: kThirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '1',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBaseColor,
        body: Stack(
          children: [
            ListView(
              children: [
                movieInfo(),
                movieSeason(),
                movieEpisodes(),
                cardWatchItem("2023 New Anime List", false, () {}),
                cardGridItem('New updated'),
              ],
            )
          ],
        ));
  }
}
