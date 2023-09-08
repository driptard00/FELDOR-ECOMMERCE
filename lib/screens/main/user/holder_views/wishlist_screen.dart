import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWishListScreen extends StatelessWidget {
  const UserWishListScreen({super.key});

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 10,
                  ), 
                  itemCount: 3,
                  itemBuilder: (context, index){
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffDD3232)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisExtent: 66,
                                mainAxisSpacing: 10,
                              ), 
                              itemCount: 4,
                              itemBuilder: (context, index){
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "images/shoe.png"
                                    ),
                                  ),
                                );
                              }
                            ),
                          ),
                          const Text(
                            "Nike Wishlists",
                            style: TextStyle(
                              color: Color(0xff37383D),
                              fontSize: 14
                            ),
                          ),
                          const Text(
                            "8 items",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}