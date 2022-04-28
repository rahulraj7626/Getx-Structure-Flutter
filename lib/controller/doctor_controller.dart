import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx_api_example/model/doctors_model.dart';
import 'package:getx_api_example/repository/api_repo.dart';
import 'package:getx_api_example/repository/api_repo_implementation.dart';

class DoctorController extends GetxController {
  ListingRepo? _listRepo;
  RxList<Doctors>? doctors;
  RxString search = "".obs;
  RxBool isLoading = false.obs;
  DoctorController() {
    _listRepo = Get.find<ApiRepoImplementation>();
    loadDoctors();
  }
  loadDoctors() async {
    showLoading();
    final result = await _listRepo!.getSearchDoctors(search.value);
    hideLoading();
    if (result.isNotEmpty) {
      doctors = result.obs;
    } else {
      doctors!.clear();
      print("no data found");
    }
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
