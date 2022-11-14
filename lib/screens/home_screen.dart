import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/string_constants.dart';
import '../models/news_type_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>? imgList;
  int? pageIndex;
  List<Widget>? imageSliders;
  int? currentIndex;

  @override
  void initState() {
    imageSliders = [];
    currentIndex = -1;
    imgList = [
      StringConstants.carouselImg,
      StringConstants.carouselImg,
      StringConstants.carouselImg
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white, body: buildBody()),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        width: MediaQuery.of(context).size.width * .75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: const Color(0xffF0F1FA))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringConstants.typeHere,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: StringConstants.nutinoStyle,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff818181)),
                            ),
                            Image.asset(
                              StringConstants.searchImg,
                              height: 20,
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .15,
                        child: Image.asset(
                          StringConstants.notificationImg,
                          height: 33,
                          width: 33,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        StringConstants.latestNews,
                        style: TextStyle(
                            fontFamily: StringConstants.nutinoStyle,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: StringConstants.seeAll,
                            style: TextStyle(
                              color: Color(0xff0080FF),
                              fontFamily: StringConstants.nutinoStyle,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            )),
                        const WidgetSpan(
                            child: SizedBox(
                          width: 10,
                        )),
                        WidgetSpan(
                            child: Image.asset(
                          StringConstants.arrowImg,
                          height: 15,
                          width: 15,
                        ))
                      ])),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          CarouselSlider(
              options: CarouselOptions(
                height: 250,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: buildCarouselList()),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 29,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newsTypeList.length,
                itemBuilder: (context, index) {
                  NewsTypeModel newsType = newsTypeList[index];
                  return InkWell(
                      onTap: () {
                        print("index is $index");
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Padding(
                        padding: index == 0 ? const EdgeInsets.only(left: 15, right: 3) : const EdgeInsets.only(left: 5, right: 3),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              gradient: currentIndex == index
                                  ? const LinearGradient(colors: [
                                      Color(0xffFF3A44),
                                      Color(0xffFF8086)
                                    ])
                                  : const LinearGradient(colors: [
                                      Colors.transparent,
                                      Colors.transparent,
                                    ]),
                              border:
                                  Border.all(color: const Color(0xffF0F1FA)),
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            newsType.newsTypeName ?? "",
                            style: TextStyle(
                                fontFamily: StringConstants.nutinoStyle,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ));
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                children: [
                  Image.asset(StringConstants.image1),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(StringConstants.image2)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildCarouselList() {
    return imgList!
        .map((item) => Container(
              color: Colors.white,
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        item,
                        fit: BoxFit.fill,
                        width: 600.0,
                        height: 500,
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
  }
}
