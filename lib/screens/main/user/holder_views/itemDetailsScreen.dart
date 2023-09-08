import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsScreen extends StatelessWidget {
   ItemDetailsScreen({super.key});

  final DraggableScrollableController _draggableScrollableController = DraggableScrollableController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: const Color(0xffF94E18),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Material(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Container(
                              height: 34,
                              width: 34,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mens Shoes",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontFamily: "PoppinsMedium",
                      fontSize: 20
                    ),
                  ),
                  const Text(
                    "Nike Air Max 90",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PoppinsBold",
                      fontSize: 25
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      width: Get.width,
                      decoration: const BoxDecoration(
                        color: Color(0xffDD3232),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Description",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsBold",
                              fontSize: 22
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            "images/shoeBig.png",
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
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
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color(0xffFB3131),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Choose Size",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "PoppinsMedium",
                                    fontSize: 15
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xffFB3131),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  "US 9",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  "US 9",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  "US 9",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  "US 9",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Center(
                                child: Text(
                                  "US 9",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                          ],
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