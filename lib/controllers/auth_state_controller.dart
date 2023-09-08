import 'package:get/get.dart';

class AuthStateController extends GetxController {
  // INSTANT VARIABLES
  String _selectedType = "";
  List<String> _userTypes = [
    "Customer",
    "Vendor",
    "Logistics"
  ];

  // GETTERS
  String get selectedType => _selectedType;
  List get userTypes => _userTypes ;

  // SETTERS
  updateSelectedType(value) {
    _selectedType = value;
    update();
  }

}