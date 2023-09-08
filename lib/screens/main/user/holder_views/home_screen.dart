import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserHomeScreen extends StatelessWidget {
 UserHomeScreen({super.key});

  final DraggableScrollableController _draggableScrollableController = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Color(0xffFA4E18),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                                ),
                                child: Image.asset(
                                  "images/profileAvatar.png"
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome Back",
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    "Wade Warren",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "PoppinsBold"
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Padding(
                        padding: const EdgeInsets.only(left: 20,),
                        child: Container(
                          height: 130,
                          width: 300,
                          padding: const EdgeInsets.only(left: 15),
                          decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "80% OFF",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff37383D),
                                        fontFamily: "PoppinsMedium"
                                      ),
                                    ),
                                    Text(
                                      "Discover fashion that suits to your style",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff37383D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                "images/shoe.png"
                              )
                            ],
                          ),
                        ),
                      ),
                      options: CarouselOptions(
                        padEnds: false,
                        height: 130,
                        viewportFraction: 0.8,
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                    )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DotsIndicator(
                    dotsCount: 5,
                    position: 0,
                    decorator: const DotsDecorator(
                      activeColor: Colors.white
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Popular Brands",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "PoppinsBold"
                              ),
                            ),
                                      
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 10,
                              );
                            },
                            itemBuilder:(context, index) {
                              return Image.asset(
                                "images/oraimo.png",
                                width: 150,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  
                ],
              )
            ),
          ),
          Positioned(
            child: DraggableScrollableSheet(
              controller: _draggableScrollableController,
              maxChildSize: 0.4,
              minChildSize: 0.3,
              initialChildSize: 0.3,
              builder: (context, scrollController) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xffF5F4FC),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                            Container(
                              height: 130,
                              width: 300,
                              padding: const EdgeInsets.only(left: 15),
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 6,
                                    child: Text(
                                      "PRODUCT OF THE WEEK",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff37383D),
                                        fontFamily: "PoppinsMedium"
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "images/mainCloth.png"
                                  )
                                ],
                              ),
                            ),
                            options: CarouselOptions(
                              padEnds: false,
                              height: 130,
                              viewportFraction: 1,
                              enableInfiniteScroll: false,
                              initialPage: 0,
                              reverse: false,
                              scrollDirection: Axis.horizontal,
                          )
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DotsIndicator(
                          dotsCount: 5,
                          position: 0,
                          decorator: const DotsDecorator(
                            activeColor: Color(0xffFB3131)
                          ),
                        ),

                        const Row(
                          children: [
                            Text(
                              "Popular",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff37383D),
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/clothRow.png"
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}