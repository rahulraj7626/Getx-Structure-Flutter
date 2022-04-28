import 'package:getx_api_example/model/doctors_model.dart';

abstract class ListingRepo {
  Future<List<Doctors>> getDoctorsList();
  Future<List<Doctors>> getSearchDoctors(String query);
}
