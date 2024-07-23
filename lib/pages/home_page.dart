import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/card_banner_item.dart';
import 'package:lumion/widgets/card_item.dart';
import 'package:lumion/widgets/carousel_item.dart';
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
  int currentIndex = 0;
  String movieImg = "";

  @override
  void initState() {
    movieImg = "assets/img_scroll1.png";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    onTapDirect: () {},
                    heightSize: height,
                  ),
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {},
                    heightSize: height,
                  ),
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {},
                    heightSize: height,
                  ),
                  CardItem(
                    title: "Boku No Hero Academia",
                    imgUrl: 'assets/img_scroll1.png',
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    btnCardTitle: btnTitle,
                    onPressed: () {},
                    onTapDirect: () {},
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
                    margin: EdgeInsets.only(left: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CardItem(
                    title: "Made In Abyss",
                    imgUrl: 'assets/img_scroll2.png',
                    widthSize: 200,
                    isPlay: true,
                    margin: EdgeInsets.only(left: 10, right: 20),
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
                children: [
                  CardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    isCircle: true,
                    crossAxisCenter: true,
                    margin: EdgeInsets.only(left: 20),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    isCircle: true,
                    crossAxisCenter: true,
                    margin: EdgeInsets.only(left: 10),
                    onPressed: () {},
                    onTapDirect: () {},
                  ),
                  CardItem(
                    title: "One Piece",
                    imgUrl: 'assets/img_scroll3.png',
                    widthSize: 100,
                    isCircle: true,
                    crossAxisCenter: true,
                    margin: EdgeInsets.only(left: 10, right: 20),
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
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 440,
                padding: const EdgeInsets.only(top: 80),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movieImg),
                  ),
                ),
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
              IndicatorItem(movieList: movieList, indexActive: currentIndex),
            ],
          ),
          cardMovieItem('Recomended', 160, true, "", () {}),
          cardMovieItem('Comning soon', 210.0, false, "Set", () {}),
          cardBannerItem('Anime popular', true, "", () {}),
          cardGridItem('Nxew updated'),
          cardWatchItem("Continue watching", false, () {}),
          cardCaricularItem("Popular celebrities"),
        ],
      ),
    );
  }
}
