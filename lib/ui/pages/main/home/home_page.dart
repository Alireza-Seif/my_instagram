import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_instagram/controller/api_service.dart';
import 'package:my_instagram/model/fake_highlight_model.dart';
import 'package:retrofit/dio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    List<FakeHighlightModel> heightLights = [];
    ApiService apiService = Get.put<ApiService>(ApiService());

    late Future<HttpResponse> getPosts;

    getPosts = apiService.restClient.getPosts();

    heightLights.add(FakeHighlightModel('Fall', 'assets/images/fall.jpg'));
    heightLights.add(FakeHighlightModel('Spring', 'assets/images/spring.jpg'));
    heightLights.add(FakeHighlightModel('Fall', 'assets/images/fall.jpg'));
    heightLights.add(FakeHighlightModel('Spring', 'assets/images/spring.jpg'));
    heightLights.add(FakeHighlightModel('Fall', 'assets/images/fall.jpg'));
    heightLights.add(FakeHighlightModel('Spring', 'assets/images/spring.jpg'));
    heightLights.add(FakeHighlightModel('Fall', 'assets/images/fall.jpg'));
    heightLights.add(FakeHighlightModel('Spring', 'assets/images/spring.jpg'));
    heightLights.add(FakeHighlightModel('Fall', 'assets/images/fall.jpg'));
    heightLights.add(FakeHighlightModel('Spring', 'assets/images/spring.jpg'));
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
            width: Get.width,
            child: ListView.builder(
                itemCount: heightLights.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            heightLights.elementAt(index).icon!,
                            width: 48,
                            height: 48,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(heightLights.elementAt(index).title!)
                      ],
                    ),
                  );
                }),
          ),
          FutureBuilder<HttpResponse>(
            future: getPosts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return const Text('');
                  },
                );
              } else if (snapshot.hasError) {
                return const CircularProgressIndicator();
              }
              return const Text('Success');
            },
          )
        ],
      ),
    );
  }
}
