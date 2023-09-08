import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:feldor_app/widget/buttond/apple_button.dart';
import 'package:feldor_app/widget/buttond/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/buttond/google_button.dart';

class VendorLoginScreen extends StatelessWidget {
  VendorLoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: const Color(0xffF5F4FC),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
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
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "images/logo.png",
                  height: 50,
                  width: 50,
                ),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "PoppinsBold"
                  ),
                ),
                const Text(
                  "By signing in you agree to our Terms and privacy policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13 ,
                  ),
                ),
                                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Email",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1
                                      )
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1
                                      )
                                    ),
                                    hintText: "Enter Email",
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15)
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Password",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1
                                      )
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1
                                      )
                                    ),
                                    hintText: "Enter Password",
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                                    suffixIcon: const Icon(
                                      Icons.visibility_outlined
                                    )
                                  ),
                                  obscureText: true,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xffFB3131),
                                      fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            AuthButton.showButton("SIGN IN",(){
                              //  Get.toNamed(holderScreen);
                            }),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      thickness: 0.3,
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Or Sign up with",
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                            fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      thickness: 0.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            AppleButton.showButton(),
                            const SizedBox(
                              height: 10,
                            ),
                            GoogleButton.showButton(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "New to FELDOR ?",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.4),
                                      fontFamily: "PoppinsMedium"
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Get.toNamed(vendorsSignUp);
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffDD3232),
                                        fontFamily: "PoppinsMedium",
                                        decoration: TextDecoration.underline
                                    ),
                                  ),
                                ),
                              ],
                            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}