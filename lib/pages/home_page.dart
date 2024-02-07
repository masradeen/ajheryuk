import 'dart:async';

import 'package:ajheryuk/datas/slider_images.dart';
import 'package:flutter/material.dart';

List<Widget> sliderItems = images
    .map((sImage) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                sImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ))
    .toList();

class HomePage extends StatefulWidget {
  static const nameRoute = './homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  late Timer timer;
  int selectedIndex = 0;

  //untuk navbar
  int _selectedNavIndex = 0;

  void _onNavbarTapped(int index){
    setState(() {
      _selectedNavIndex = index;
    });
  }



  @override
  void initState() {
    super.initState();

    //untuk buat auto slideshow
    // timer = Timer.periodic(const Duration(seconds: 4), (timer) {
    //   if (currentPage < images.length) {
    //     currentPage++;
    //   } else {
    //     currentPage = 0;
    //   }

    //   _pageController.animateToPage(
    //     currentPage,
    //     duration: const Duration(milliseconds: 400),
    //     curve: Curves.easeIn,
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {

    final _listPage = <Widget>[
      const Text("Home"),
      const Text("Discover"),
      const Text("Messages"),
      const Text("Profile"),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: "Discover",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.mail),
        label: "Discover",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Discover",
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      // backgroundColor: Colors.amber,
      items: _bottomNavBarItems,
      currentIndex: _selectedNavIndex,
      unselectedItemColor: Color(0xFFC7C9D9),
      selectedItemColor: Color(0xFFEC5F5F),
      onTap: _onNavbarTapped,
    );

    Widget dot(bool isactive, int index) {
      return Padding(
        padding: const EdgeInsets.only(left: 3),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: InkWell(
            child: CircleAvatar(
              radius: 4,
              backgroundColor: isactive ? Color(0xFFEC5F5F) : Color(0xFFEEEEEE),
            ),
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              );
            },
          ),
        ),
      );
    }

    List<Widget> dotList() {
      List<Widget> list = [];
      for (int i = 0; i < images.length; i++) {
        list.add(i == selectedIndex ? dot(true, i) : dot(false, i));
      }
      return list;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 95,
            width: MediaQuery.of(context).size.width,
            // color: Colors.blue,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        child: Image.asset(
                          "assets/images/avatar-1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFF4ED442),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo, Samuel!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icons/award.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "+1600",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                          Text(
                            " Points",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFFCD034),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 23,
                  height: 23,
                  child: Stack(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          "assets/icons/notification.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFFEC5F5F),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                StoryItem(
                  image: "assets/images/story-1.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-2.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-3.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-4.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-5.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-6.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-7.jpg",
                ),
                StoryItem(
                  image: "assets/images/story-8.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Upcoming ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "course of this week",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CategoryItem(
                  title: "All",
                  status: true,
                ),
                CategoryItem(
                  title: "UI/UX",
                  status: false,
                ),
                CategoryItem(
                  title: "Illustration",
                  status: false,
                ),
                CategoryItem(
                  title: "3D Animation",
                  status: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.37,
            width: double.infinity,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: sliderItems,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedIndex = page;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 4,
                left: MediaQuery.of(context).size.width * 0.4,
              ),
              child: Row(
                children: dotList(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem({
    Key? key,
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: status == true ? Color(0xFFEC5F5F) : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: status == true ? Colors.white : Colors.black54,
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 90,
      height: 90,
      child: Stack(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0xFFEC5F5F),
                width: 5,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    image,
                  ),
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xFF4DC9D1),
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: Image.asset("assets/icons/video.png"),
            ),
          ),
        ],
      ),
    );
  }
}
