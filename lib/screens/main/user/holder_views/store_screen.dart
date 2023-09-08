import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserStoreScreen extends StatelessWidget {
  const UserStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: const Color(0xffFA4E18),
        child: Column(
          children: [
            Container(
              height: 120,
              width: Get.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          prefixIcon: Icon(
                            Icons.search
                          ),
                          suffixIcon: Icon(
                            Icons.filter
                          ),
                          hintText: "What do you want to buy?",
                          hintStyle: TextStyle(
                            fontSize: 14
                          )
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'FOOTWEAR',
                            style: TextStyle(
                              color: Color(0xff37383D),
                              fontFamily: "PoppinsBold",
                              fontSize: 16
                            ),
                          ),
                          Text(
                            'SEE ALL',
                            style: TextStyle(
                              color: Color(0xffFB3131),
                              fontFamily: "PoppinsBold",
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 130,
                          mainAxisSpacing: 10
                        ), 
                        itemCount: 9,
                        itemBuilder:(context, index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(itemDetailsScreen);
                            },
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0XFFD9D9D9)
                                    ),
                                    child: Container(
                                      color: Colors.white,
                                      child: Image.asset(
                                        "images/shoe.png"
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 3,
                                  child: Center(
                                    child: Text(
                                      "Air Jordans",
                                      style: TextStyle(
                                        fontFamily: "PoppinsBold",
                                        fontSize: 12
                                      ),
                                    ),
                                  )
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CLOTHING',
                            style: TextStyle(
                              color: Color(0xff37383D),
                              fontFamily: "PoppinsBold",
                              fontSize: 16
                            ),
                          ),
                          Text(
                            'SEE ALL',
                            style: TextStyle(
                              color: Color(0xffFB3131),
                              fontFamily: "PoppinsBold",
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 130,
                          mainAxisSpacing: 10
                        ), 
                        itemCount: 9,
                        itemBuilder:(context, index) {
                          return Column(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0XFFD9D9D9)
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    child: Image.asset(
                                      "images/dress1.png"
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text(
                                    "Armani Gown",
                                    style: TextStyle(
                                      fontFamily: "PoppinsBold",
                                      fontSize: 12
                                    ),
                                  ),
                                )
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}