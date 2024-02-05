import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = './homepage';

  @override
  Widget build(BuildContext context) {
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
                SizedBox(width: 15,),
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
                          SizedBox(width: 5,),
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
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 15,),
                StoryItem(image: "assets/images/story-1.jpg",),
                StoryItem(image: "assets/images/story-2.jpg",),
                StoryItem(image: "assets/images/story-3.jpg",),
                StoryItem(image: "assets/images/story-4.jpg",),
                StoryItem(image: "assets/images/story-5.jpg",),
                StoryItem(image: "assets/images/story-6.jpg",),
                StoryItem(image: "assets/images/story-7.jpg",),
                StoryItem(image: "assets/images/story-8.jpg",),
              ],
            ),
          ),
          SizedBox(height: 10,),
        ],
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