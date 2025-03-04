import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_instagram/model/fake_highlight_model.dart';
import 'package:my_instagram/ui/pages/main/profile/posts/my_posts.dart';
import 'package:my_instagram/ui/pages/main/profile/reels/my_reels.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabController.animateTo(0);
    _tabController.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<FakeHighlightModel> heightLights = [];

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/user.jpg',
                    width: 72,
                    height: 72,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: Get.width / 1.5,
                    height: 50,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('10'), Text('Posts')],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('100k'), Text('Following')],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('10k'), Text('Followers')],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        fixedSize: Size(Get.width / 1.6, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Follow'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Alireza Seif',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text('Mobile Developer'),
                  SizedBox(
                    height: 80,
                    width: Get.width / 1.1,
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
                ],
              ),
            ],
          ),
          tabBar(),
          Expanded(child: tabBarViews())
        ],
      ),
    );
  }

  Widget tabBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppBar(
            elevation: 10,
            backgroundColor: Colors.transparent,
            bottom: tabBrWidget(context, _tabController),
          ),
        ),
      ),
    );
  }

  tabBrWidget(BuildContext context, TabController tabController) {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: tabController.index == 0
                  ? Colors.blue
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Posts',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: tabController.index == 1
                  ? Colors.blue
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'Reels',
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget tabBarViews() {
    return TabBarView(
      controller: _tabController,
      children: [
        MyPosts(),
        MyReels(),
      ],
    );
  }
}
