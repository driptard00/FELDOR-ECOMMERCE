import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white,
            ),
            Positioned(
              child: Container(
                height: 160,
                width: Get.width,
                color: const Color(0xffDD3232),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
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
                        const SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              width: 10,
                              color: const Color(0xffDD3232)
                            ),
                          ),
                          child: Image.asset(
                            "images/profileAvatar.png"
                          ),
                        ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Adewale Johnson",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      "Adewale@Johnson.com",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Material(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Container(
                                  height: 200,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFB3131),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Material(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30)
                                                ),
                                                child: Container(
                                                  height: 29,
                                                  width: 29,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffDD3232)
                                                  ),
                                                  child: const Icon(
                                                    Icons.fire_truck,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              const Text(
                                                "Orders",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      const Text(
                                        "Total open orders",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const Text(
                                        "12",
                                        style: TextStyle(
                                          color: Color(0xff5EABF6),
                                          fontSize: 16,
                                          fontFamily: "PoppinsBold"
                                        ),
                                      ),
                                      const Text(
                                        "Total closed orders",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const Text(
                                        "50",
                                        style: TextStyle(
                                          color: Color(0xff37383D),
                                          fontSize: 16,
                                          fontFamily: "PoppinsBold"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Material(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Container(
                                  height: 200,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffDD3232),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Material(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30)
                                                ),
                                                child: Container(
                                                  height: 29,
                                                  width: 29,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffDD3232)
                                                  ),
                                                  child: const Icon(
                                                    Icons.mail,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 6,
                                              ),
                                              const Text(
                                                "Inbox",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Total New Inbox",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      const Text(
                                        "12",
                                        style: TextStyle(
                                          color: Color(0xff5EABF6),
                                          fontSize: 16,
                                          fontFamily: "PoppinsBold"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'RECENTLY VIEWED',
                              style: TextStyle(
                                color: Color(0xff37383D),
                                fontFamily: "PoppinsBold",
                                fontSize: 10
                              ),
                            ),
                            Text(
                              'SEE ALL',
                              style: TextStyle(
                                color: Color(0xffFB3131),
                                fontFamily: "PoppinsBold",
                                fontSize: 10
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Material(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset("images/dress1.png"),
                                      const Text(
                                        'D02 Female Casual',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff37383D),
                                          fontSize: 10
                                        ),
                                      ),
                                      const Text(
                                        '200.00',
                                        style: TextStyle(
                                          color: Color(0xffFB3131),
                                          fontSize: 10,
                                          fontFamily: "PoppinsMedium"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Material(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset("images/dress2.png"),
                                      const Text(
                                        'D02 Female Casual',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff37383D),
                                          fontSize: 10
                                        ),
                                      ),
                                      const Text(
                                        '200.00',
                                        style: TextStyle(
                                          color: Color(0xffFB3131),
                                          fontSize: 10,
                                          fontFamily: "PoppinsMedium"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Material(
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset("images/dress2.png"),
                                      const Text(
                                        'D02 Female Casual',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff37383D),
                                          fontSize: 10
                                        ),
                                      ),
                                      const Text(
                                        '200.00',
                                        style: TextStyle(
                                          color: Color(0xffFB3131),
                                          fontSize: 10,
                                          fontFamily: "PoppinsMedium"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              'MY SETTINGS',
                              style: TextStyle(
                                color: Color(0xff37383D),
                                fontFamily: "PoppinsBold",
                                fontSize: 10
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Container(
                            height: 41,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Color(0xffFB3131),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:  const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Address Logbook',
                                  style: TextStyle(
                                    fontFamily: "PoppinsMedium",
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                ) ,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            height: 41,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Color(0xffFB3131),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:  const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Manage Account',
                                  style: TextStyle(
                                    fontFamily: "PoppinsMedium",
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                ) ,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        const Text(
                          'Logout',
                          style: TextStyle(
                            fontFamily: "PoppinsBold",
                            color: Color(0xffFB3131),
                            fontSize: 14
                          ),
                        )
                      ],
                    ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

            // child: Column(
            //   children: [
            //     Container(
            //       height: 170,
            //       child: Stack(
            //         children: [
            //           Container(
            //             height: 150,
            //             width: Get.width,
            //             color: const Color(0xffDD3232),
            //             padding: const EdgeInsets.symmetric(
            //               horizontal: 20
            //             ),
            //           ),
            //           Positioned(
            //             child: SafeArea(
            //               child: Padding(
            //                 padding: const EdgeInsets.symmetric(horizontal: 20),
            //                 child: Column(
            //                   children: [
            //                     const SizedBox(
            //                       height: 10,
            //                     ),
            //                     Row(
            //                       children: [
            //                         Expanded(
            //                           flex: 8,
            //                           child: TextFormField(
            //                             decoration: const InputDecoration(
            //                               filled: true,
            //                               fillColor: Colors.white,
            //                               enabledBorder: OutlineInputBorder(
            //                                 borderSide: BorderSide.none
            //                               ),
            //                               focusedBorder: OutlineInputBorder(
            //                                 borderSide: BorderSide.none
            //                               ),
            //                               contentPadding: EdgeInsets.symmetric(horizontal: 10),
            //                               prefixIcon: Icon(
            //                                 Icons.search
            //                               ),
            //                               suffixIcon: Icon(
            //                                 Icons.filter
            //                               ),
            //                               hintText: "What do you want to buy?",
            //                               hintStyle: TextStyle(
            //                                 fontSize: 14
            //                               )
            //                             ),
            //                           ),
            //                         ),
            //                         const Expanded(
            //                           flex: 2,
            //                           child: Align(
            //                             alignment: Alignment.centerRight,
            //                             child: Icon(
            //                               Icons.shopping_cart,
            //                               color: Colors.white,
            //                             ),
            //                           )
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 20,
            //                     ),
            //                     Container(
            //                       height: 70,
            //                       width: 70,
            //                       decoration: BoxDecoration(
            //                         shape: BoxShape.circle,
            //                         color: Colors.white,
            //                         border: Border.all(
            //                           width: 10,
            //                           color: const Color(0xffDD3232)
            //                         ),
            //                       ),
            //                       child: Image.asset(
            //                         "images/profileAvatar.png"
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 10,
            //     ),
            //     const Text(
            //       "Adewale Johnson",
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 14,
            //         fontWeight: FontWeight.bold
            //       ),
            //     ),
            //     const Text(
            //       "Adewale@Johnson.com",
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 12,
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20),
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               Expanded(
            //                 child: Material(
            //                   elevation: 5,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)
            //                   ),
            //                   child: Container(
            //                     height: 200,
            //                     width: 155,
            //                     decoration: BoxDecoration(
            //                       color: const Color(0xffFB3131),
            //                       borderRadius: BorderRadius.circular(20)
            //                     ),
            //                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //                     child: Column(
            //                       children: [
            //                         Row(
            //                           mainAxisAlignment: MainAxisAlignment.end,
            //                           children: [
            //                             Column(
            //                               crossAxisAlignment: CrossAxisAlignment.end,
            //                               children: [
            //                                 Material(
            //                                   elevation: 5,
            //                                   shape: RoundedRectangleBorder(
            //                                     borderRadius: BorderRadius.circular(30)
            //                                   ),
            //                                   child: Container(
            //                                     height: 29,
            //                                     width: 29,
            //                                     decoration: const BoxDecoration(
            //                                       shape: BoxShape.circle,
            //                                       color: Color(0xffDD3232)
            //                                     ),
            //                                     child: const Icon(
            //                                       Icons.fire_truck,
            //                                       size: 15,
            //                                       color: Colors.white,
            //                                     ),
            //                                   ),
            //                                 ),
            //                                 const SizedBox(
            //                                   height: 6,
            //                                 ),
            //                                 const Text(
            //                                   "Orders",
            //                                   style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 14,
            //                                     fontWeight: FontWeight.bold
            //                                   ),
            //                                 ),
            //                               ],
            //                             )
            //                           ],
            //                         ),
            //                         const SizedBox(
            //                           height: 6,
            //                         ),
            //                         const Text(
            //                           "Total open orders",
            //                           style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 12,
            //                             fontWeight: FontWeight.bold
            //                           ),
            //                         ),
            //                         const Text(
            //                           "12",
            //                           style: TextStyle(
            //                             color: Color(0xff5EABF6),
            //                             fontSize: 16,
            //                             fontFamily: "PoppinsBold"
            //                           ),
            //                         ),
            //                         const Text(
            //                           "Total closed orders",
            //                           style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 12,
            //                             fontWeight: FontWeight.bold
            //                           ),
            //                         ),
            //                         const Text(
            //                           "50",
            //                           style: TextStyle(
            //                             color: Color(0xff37383D),
            //                             fontSize: 16,
            //                             fontFamily: "PoppinsBold"
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 20,
            //               ),
            //               Expanded(
            //                 child: Material(
            //                   elevation: 5,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)
            //                   ),
            //                   child: Container(
            //                     height: 200,
            //                     width: 155,
            //                     decoration: BoxDecoration(
            //                       color: const Color(0xffDD3232),
            //                       borderRadius: BorderRadius.circular(20)
            //                     ),
            //                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //                     child: Column(
            //                       children: [
            //                         Row(
            //                           mainAxisAlignment: MainAxisAlignment.start,
            //                           children: [
            //                             Row(
            //                               children: [
            //                                 Material(
            //                                   elevation: 5,
            //                                   shape: RoundedRectangleBorder(
            //                                     borderRadius: BorderRadius.circular(30)
            //                                   ),
            //                                   child: Container(
            //                                     height: 29,
            //                                     width: 29,
            //                                     decoration: const BoxDecoration(
            //                                       shape: BoxShape.circle,
            //                                       color: Color(0xffDD3232)
            //                                     ),
            //                                     child: const Icon(
            //                                       Icons.mail,
            //                                       size: 15,
            //                                       color: Colors.white,
            //                                     ),
            //                                   ),
            //                                 ),
            //                                 const SizedBox(
            //                                   width: 6,
            //                                 ),
            //                                 const Text(
            //                                   "Inbox",
            //                                   style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 14,
            //                                     fontWeight: FontWeight.bold
            //                                   ),
            //                                 ),
            //                               ],
            //                             )
            //                           ],
            //                         ),
            //                         const SizedBox(
            //                           height: 10,
            //                         ),
            //                         const Text(
            //                           "Total New Inbox",
            //                           style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 12,
            //                             fontWeight: FontWeight.bold
            //                           ),
            //                         ),
            //                         const Text(
            //                           "12",
            //                           style: TextStyle(
            //                             color: Color(0xff5EABF6),
            //                             fontSize: 16,
            //                             fontFamily: "PoppinsBold"
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             height: 20,
            //           ),
            //           const Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 'RECENTLY VIEWED',
            //                 style: TextStyle(
            //                   color: Color(0xff37383D),
            //                   fontFamily: "PoppinsBold",
            //                   fontSize: 10
            //                 ),
            //               ),
            //               Text(
            //                 'SEE ALL',
            //                 style: TextStyle(
            //                   color: Color(0xffFB3131),
            //                   fontFamily: "PoppinsBold",
            //                   fontSize: 10
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(
            //             height: 20,
            //           ),
            //           Row(
            //             children: [
            //               Expanded(
            //                 child: Material(
            //                   elevation: 6,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10)
            //                   ),
            //                   child: Container(
            //                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //                     decoration: BoxDecoration(
            //                       color: Colors.white,
            //                       borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: Column(
            //                       children: [
            //                         Image.asset("images/dress1.png"),
            //                         const Text(
            //                           'D02 Female Casual',
            //                           textAlign: TextAlign.center,
            //                           style: TextStyle(
            //                             color: Color(0xff37383D),
            //                             fontSize: 10
            //                           ),
            //                         ),
            //                         const Text(
            //                           '200.00',
            //                           style: TextStyle(
            //                             color: Color(0xffFB3131),
            //                             fontSize: 10,
            //                             fontFamily: "PoppinsMedium"
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 10,
            //               ),
            //               Expanded(
            //                 child: Material(
            //                   elevation: 6,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10)
            //                   ),
            //                   child: Container(
            //                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //                     decoration: BoxDecoration(
            //                       color: Colors.white,
            //                       borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: Column(
            //                       children: [
            //                         Image.asset("images/dress2.png"),
            //                         const Text(
            //                           'D02 Female Casual',
            //                           textAlign: TextAlign.center,
            //                           style: TextStyle(
            //                             color: Color(0xff37383D),
            //                             fontSize: 10
            //                           ),
            //                         ),
            //                         const Text(
            //                           '200.00',
            //                           style: TextStyle(
            //                             color: Color(0xffFB3131),
            //                             fontSize: 10,
            //                             fontFamily: "PoppinsMedium"
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 10,
            //               ),
            //               Expanded(
            //                 child: Material(
            //                   elevation: 6,
            //                   shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10)
            //                   ),
            //                   child: Container(
            //                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //                     decoration: BoxDecoration(
            //                       color: Colors.white,
            //                       borderRadius: BorderRadius.circular(10)
            //                     ),
            //                     child: Column(
            //                       children: [
            //                         Image.asset("images/dress2.png"),
            //                         const Text(
            //                           'D02 Female Casual',
            //                           textAlign: TextAlign.center,
            //                           style: TextStyle(
            //                             color: Color(0xff37383D),
            //                             fontSize: 10
            //                           ),
            //                         ),
            //                         const Text(
            //                           '200.00',
            //                           style: TextStyle(
            //                             color: Color(0xffFB3131),
            //                             fontSize: 10,
            //                             fontFamily: "PoppinsMedium"
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),