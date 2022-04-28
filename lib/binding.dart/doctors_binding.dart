import 'package:get/get.dart';
import 'package:getx_api_example/controller/doctor_controller.dart';
import 'package:getx_api_example/repository/api_repo_implementation.dart';

class DoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiRepoImplementation());
    Get.put(DoctorController());
  }
}
