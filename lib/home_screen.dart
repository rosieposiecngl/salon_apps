import 'package:flutter/material.dart';
import 'package:salon_apps/detail.dart';

const stylistData = [
  {
    'stylistName': 'Lisa Manobal',
    'salonName': 'Super Cute Salon',
    'rating': '4.2',
    'rateAmount': '76',
    'imgUrl': 'assets/lisa2.png',
    'backgroundColor': Color(0xffFFF0EB),
  },
  {
    'stylistName': 'Jennie Rubyjane',
    'salonName': 'Rosalino Salone',
    'rating': '4.5',
    'rateAmount': '79',
    'imgUrl': 'assets/jennienew.png',
    'backgroundColor': Color(0xfff1f2f6),
  },
  {
    'stylistName': 'Jisoo Rabbit Kim',
    'salonName': 'Kim Salon',
    'rating': '4.1',
    'rateAmount': '72',
    'imgUrl': 'assets/jisoonew.png',
    'backgroundColor': Color(0xffFFF3EB),
  },
  {
    'stylistName': 'Chongah',
    'salonName': 'Chaeyoung Group',
    'rating': '4.7',
    'rateAmount': '78',
    'imgUrl': 'assets/rosesnew2.png',
    'backgroundColor': Color(0xfff1f2f6),
  }
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff4E295B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Hair Stylist',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    StylistCard(stylistData[0]),
                    SizedBox(
                      height: 20,
                    ),
                    StylistCard(stylistData[1]),
                    SizedBox(
                      height: 30,
                    ),
                    StylistCard(stylistData[2]),
                    SizedBox(
                      height: 20,
                    ),
                    StylistCard(stylistData[3]),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2 - 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: stylist['backgroundColor'],
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              right: -60,
              child: Image.asset(
                stylist['imgUrl'],
                width: MediaQuery.of(context).size.width * 0.60,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    stylist['stylistName'],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    stylist['salonName'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Color(0xff4E295B),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        stylist['rating'],
                        style: TextStyle(
                          color: Color(0xff4E295B),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(stylist)));
                    },
                    color: Color(0xff4E295B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'View Profile',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
