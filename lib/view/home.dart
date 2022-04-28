import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_example/controller/doctor_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DoctorController>();
    TextEditingController control = TextEditingController();
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        TextFormField(
          controller: control,
          decoration: const InputDecoration(hintText: "Search"),
          onChanged: (val) {
            controller.search.value = val;
            controller.loadDoctors();
          },
        ),
        Expanded(
          child: Obx(() {
            return controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : controller.doctors!.isEmpty
                    ? const Center(
                        child: Text("No data found"),
                      )
                    : ListView.builder(
                        itemCount: controller.doctors!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Text(controller.doctors![index].dName)
                            ]),
                          );
                        });
          }),
        ),
      ],
    )));
  }
}
