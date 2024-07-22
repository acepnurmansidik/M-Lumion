import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lumion/theme.dart';
import 'package:lumion/widgets/card_grid_item.dart';
import 'package:lumion/widgets/card_movie_item.dart';
import 'package:lumion/widgets/carousel_item.dart';
import 'package:lumion/widgets/card_item.dart';
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
  List<int> list = [0, 1, 2];
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
          const CardGridItem(
            title: 'New updated',
          ),
          CardMovieItem(title: 'Trending')
        ],
      ),
    );
  }
}
