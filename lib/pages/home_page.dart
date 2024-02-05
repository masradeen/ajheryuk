import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = './homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 75,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
                  Container(
                padding: EdgeInsets.all(5),
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      child: Image.asset(
                        "assets/images/avatar-1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 15,
                        width: 15,
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
                        fontSize: 18,
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFCD034),
                          ),
                        ),
                        Text(
                          " Points",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFFCD034),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 30,
                height: 30,
                child: Stack(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: Image.asset(
                        "assets/icons/notification.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 15,
                        width: 15,
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
      ),
    );
  }
}