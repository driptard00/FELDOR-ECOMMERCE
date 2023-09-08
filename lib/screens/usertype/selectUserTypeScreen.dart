import 'package:feldor_app/controllers/auth_state_controller.dart';
import 'package:feldor_app/routes/app/app_routes_names.dart';
import 'package:feldor_app/widget/buttond/apple_button.dart';
import 'package:feldor_app/widget/buttond/auth_button.dart';
import 'package:feldor_app/widget/buttond/google_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectUserTypeScreen extends StatelessWidget {
  SelectUserTypeScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.put(AuthStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffFA4E18),
                  Color(0xffFA4E18),
                  Color(0xffFD9A0D),
                  Color(0xffFFC107),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Select User Type",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: "PoppinsBold"
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Who do you want to register as",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)
                        )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            value: controller.userTypes[0], 
                            groupValue: controller.selectedType, 
                            onChanged: (value){
                              controller.updateSelectedType(value);
                            },
                            title: Text(
                              controller.userTypes[0]
                            ),
                            activeColor: Color(0xffFA4E18),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            value: controller.userTypes[1], 
                            groupValue: controller.selectedType, 
                            onChanged: (value){
                              controller.updateSelectedType(value);
                            },
                            title: Text(
                              controller.userTypes[1]
                            ),
                            activeColor: Color(0xffFA4E18),
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            value: controller.userTypes[2], 
                            groupValue: controller.selectedType, 
                            onChanged: (value){
                              controller.updateSelectedType(value);
                            },
                            title: Text(
                              controller.userTypes[2]
                            ),
                            activeColor: Color(0xffFA4E18),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          AuthButton.showButton("CONTINUE",(){
                            (controller.selectedType == 'Customer')?
                            Get.toNamed(signupScreen)
                            :
                            (controller.selectedType == 'Vendor')?
                            Get.toNamed(vendorsSignUp)
                            :
                            (controller.selectedType == 'Logistics')?
                            Get.toNamed(signupScreen)
                            :
                            null;
                          }),
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
