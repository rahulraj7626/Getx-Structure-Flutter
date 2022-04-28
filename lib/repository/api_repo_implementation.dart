import 'package:get/get.dart';
import 'package:getx_api_example/model/doctors_list_model.dart';
import 'package:getx_api_example/model/doctors_model.dart';
import 'package:getx_api_example/repository/api_repo.dart';
import 'package:getx_api_example/service/http_implimentation.dart';
import 'package:getx_api_example/service/http_service.dart';

const token =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJJRCI6IjQ2IiwiVHlwZSI6IkFzcyIsIkhJRCI6IjMifQ.eUgtxvqTiaIJPyU-tYaSglbVJjVtBLzt0gc3vst0FTM";

class ApiRepoImplementation implements ListingRepo {
  late HttpService _httpService;
  ApiRepoImplementation() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }
  @override
  Future<List<Doctors>> getDoctorsList() async {
    try {
      final response =
          await _httpService.getRequest('op/public/api/getHomeData');
      final parsedResponse = DoctorsList.fromJson(response.data);
      return parsedResponse.doctorsList;
    } catch (e) {
      print(e);
      return null!;
    }
  }

  @override
  Future<List<Doctors>> getSearchDoctors(String query) async {
    var formData = {
      'Search': query,
      'Token': token,
    };
    try {
      final response = await _httpService.postRequest(
          'api/public/index.php/Doctor/searchDoctor', query, formData);
      final parsedResponse = DoctorsList.fromJson(response.data);
      return parsedResponse.doctorsList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
