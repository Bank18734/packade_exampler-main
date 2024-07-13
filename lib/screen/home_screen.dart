import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:packade_exampler/screen/about_us_screen.dart';
import 'package:packade_exampler/screen/calculation_screen.dart';
import 'package:packade_exampler/screen/contact_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider_1.jpg",
    "images/slider_2.jpg",
    "images/slider_3.jpg",
    "images/slider_4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('images/slider_1.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Text('Drawer Header'),
            ),
            ListTile(
                title: Text('ข่าวสาร'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactUsScreen()));
                }),
            ListTile(
                title: Text('เกี่ยวกับเรา'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutUsScreen()));
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        child: Swiper(
          autoplay: true,
          itemCount: sliders.length,
          itemBuilder: (context, index) => Image.asset(sliders[index]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          onTap: (value) {
            switch (value) {
              case 3:
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CalculationScreen()),
                );
              default:
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.lightBlue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.lightBlue),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.lightBlue),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: 'calculation',
                backgroundColor: Colors.lightBlue),
          ]),
    );
  }
}
