import 'package:feldor_app/controllers/user_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserHolderScreen extends StatelessWidget {
  UserHolderScreen({super.key});

  final UserStateController _userStateController = Get.put(UserStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserStateController>(
      builder: (controller) {
        return Scaffold(
          body: controller.screens[controller.currentIndex],
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 70,
              width: Get.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){
                      controller.updateCurrentIndex(0);
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: (controller.currentIndex == 0)?
                      const Color(0xffDD3232)
                      :
                      null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: (controller.currentIndex == 0)?
                    const Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                    :
                     const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffDD3232),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Color(0xffDD3232),
                            // fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateCurrentIndex(1);
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: (controller.currentIndex == 1)?
                      const Color(0xffDD3232)
                      :
                      null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: (controller.currentIndex == 1)?
                    const Row(
                      children: [
                        Icon(
                          Icons.store,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Store",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                    :
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.store,
                          color: Color(0xffDD3232),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Store",
                          style: TextStyle(
                            color: Color(0xffDD3232),
                            // fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateCurrentIndex(2);
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: (controller.currentIndex == 2)?
                      const Color(0xffDD3232)
                      :
                      null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: (controller.currentIndex == 2)?
                    const Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Wishlist",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                    :
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Color(0xffDD3232),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Wishlist",
                          style: TextStyle(
                            color: Color(0xffDD3232),
                            // fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateCurrentIndex(3);
                    }, 
                    style: TextButton.styleFrom(
                      backgroundColor: (controller.currentIndex == 3)?
                      const Color(0xffDD3232)
                      :
                      null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: (controller.currentIndex == 3)?
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                    :
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xffDD3232),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Account",
                          style: TextStyle(
                            color: Color(0xffDD3232),
                            // fontFamily: "PoppinsBold"
                          ),
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}