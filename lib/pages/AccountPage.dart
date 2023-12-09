import 'package:flutter/material.dart';
import 'package:growpal_hackathon/pages/Items.dart';

import '../globalVariables.dart';
import '../widgets/CartAppbar.dart';
import '../widgets/CartBottomNaviBar.dart';
import '../widgets/CartItems.dart';
import 'AboutPage.dart';
import 'Items.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        // Adjust the height as needed
        child: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Spacer(flex: 2),
              Text(
                'GrowPal',
                style: TextStyle(fontSize: 29),
              ),
              Spacer(flex: 10),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/avatar.jpeg"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(height: 29),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Container(
                height: 61,
                width: 193,
                decoration: BoxDecoration(
                  color: Color(0xFFF1D1D1D),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text('Your Orders',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Items()));
              },
              child: Container(
                height: 61,
                width: 293,
                decoration: BoxDecoration(
                  color: Color(0xFFF1D1D1D),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text('Your Items',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Container(
                height: 61,
                width: 293,
                decoration: BoxDecoration(
                  color: Color(0xFFF1D1D1D),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text('Privacy & Security',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Container(
                height: 61,
                width: 293,
                decoration: BoxDecoration(
                  color: Color(0xFFF1D1D1D),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text('Support',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 28.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Container(
                height: 61,
                width: 293,
                decoration: BoxDecoration(
                  color: Color(0xFFF1D1D1D),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text('Feedback',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}