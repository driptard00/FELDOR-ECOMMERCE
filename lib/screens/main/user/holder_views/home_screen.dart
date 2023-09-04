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
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xffFA4E18),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome Back Wade Warren",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "PoppinsBold"
                      ),
                    ),
                    Row(
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
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) {
                          return Image.asset(
                            "images/oraimo.png"
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
    );
  }
}