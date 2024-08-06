import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lumion/pages/detail_page.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/card_banner_item.dart';
import 'package:lumion/widgets/card_item.dart';
import 'package:lumion/widgets/carousel_item.dart';
import 'package:lumion/widgets/circle_card_item.dart';
import 'package:lumion/widgets/indicator_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> movieList = [
    {
      "imgUrlFront": "assets/img_scroll1.png",
      "imgUrlBack": "assets/img_scroll1.png",
      "title": "Boku No Hero Academia",
      "rating": 8.7,
      "status": "Completed",
      "totalEpisode": 24,
    },
    {
      "imgUrlFront": "assets/img_scroll2.png",
      "imgUrlBack": "assets/img_scroll2.png",
      "title": "Made In Abyss",
      "rating": 9.2,
      "status": "Completed",
      "totalEpisode": 24,
    },
    {
      "imgUrlFront": "assets/img_scroll3.png",
      "imgUrlBack": "assets/img_scroll3.png",
      "title": "One Piece",
      "rating": 9.8,
      "status": "On going",
      "totalEpisode": 1112,
    },
  ];
  final CarouselController _controllerCarousel = CarouselController();
  double _scrollOffset = 0.0;
  int currentIndex = 0;
  String movieImg = "";

  @override
  void initState() {
    movieImg = "assets/img_scroll1.png";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget appBarCustom() {
      return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          color:
              Color.fromRGBO(0, 0, 0, _scrollOffset), // Red with full opacity,
          child: AppBar(
            backgroundColor: Colors.transparent, // Transparent background
            elevation: 0, // No shadow
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(242, 242, 242, 0.5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'what your think....',
                            style: whiteTextStyle,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: whiteTextStyle,
                        ),
                        Icon(
                          Icons.search,
                          color: kWhiteColor,
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_vip_unsubscribe.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget carouselItem() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 440,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movieImg),
              ),
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                child: Container(
                  width: double.infinity,
                  height: 440,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 440,
            padding: const EdgeInsets.only(top: 80),
            child: CarouselSlider(
              carouselController: _controllerCarousel,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.5,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    movieImg = "assets/img_scroll${index + 1}.png";
                  });
                },
              ),
              items: movieList.map((movie) {
                return CarouselItem(
                  imgUrlFront: movie['imgUrlFront'],
                  title: movie['title'],
                  rating: movie['rating'],
                  status: movie['status'],
                  totalEpisode: movie['totalEpisode'],
                );
              }).toList(),
            ),
          ),
          IndicatorItem(
            movieList: movieList,
            indexActive: currentIndex,
            onPressed: () {},
          ),
        ],
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
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: -1.5,
                      child: Icon(
                        Icons.chevron_left,
                        color: kWhiteColor,
                      ),
                    ),
                    Text(
                      'More',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget cardMovieItem(
      String title,
      double height,
      bool isMore,
      String btnTitle,
      Function() onTap,
    ) {
      return Container(
        alignment: Alignment.centerLeft,
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
              child: title != ""
                  ? Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
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
                    margin: const EdgeInsets.only(left: 20),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    heightSize: height,
                  ),
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    heightSize: height,
                  ),
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    heightSize: height,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cardBannerItem(
      String title,
      bool isMore,
      String btnTitle,
      Function() onTap,
    ) {
      return Container(
        alignment: Alignment.centerLeft,
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
              child: title != ""
                  ? Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
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
                  CardBannerItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 20),
                    widthSize: 160,
                    heightSize: 240,
                    onPressed: () {},
                  ),
                  CardBannerItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10),
                    widthSize: 160,
                    heightSize: 240,
                    onPressed: () {},
                  ),
                  CardBannerItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    widthSize: 160,
                    heightSize: 240,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cardWatchItem(String title, bool isMore, Function() onTap) {
      return Container(
        alignment: Alignment.centerLeft,
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
              child: title != ""
                  ? Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
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
                    isPlay: true,
                    margin: const EdgeInsets.only(left: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CardItem(
                    title: "Made In Abyss",
                    imgUrl: 'assets/img_scroll2.png',
                    widthSize: 200,
                    isPlay: true,
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

    Widget cardCaricularItem(String title) {
      return Container(
        alignment: Alignment.centerLeft,
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
              child: title != ""
                  ? Text(
                      title,
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                    )
                  : const SizedBox(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleCardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    crossAxisCenter: true,
                    margin: const EdgeInsets.only(left: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CircleCardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    crossAxisCenter: true,
                    margin: const EdgeInsets.only(left: 10),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CircleCardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    crossAxisCenter: true,
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

    return Scaffold(
      backgroundColor: kBaseColor,
      body: Stack(
        children: [
          // Background content
          NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.axis.name == "vertical" &&
                  scrollInfo.metrics.pixels / 100 <= 1) {
                setState(() {
                  _scrollOffset = scrollInfo.metrics.pixels / 100;
                });
              }
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  carouselItem(),
                  cardCaricularItem("Popular celebrities"),
                  cardMovieItem('Recomended', 160, true, "", () {}),
                  cardMovieItem('Comning soon', 210.0, false, "Set", () {}),
                  cardBannerItem('Anime popular', true, "", () {}),
                  cardGridItem('New updated'),
                  cardWatchItem("Continue watching", false, () {}),
                ],
              ),
            ),
          ),
          // Floating AppBar
          appBarCustom()
        ],
      ),
    );
  }
}
