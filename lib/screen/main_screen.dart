import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'contact_screen.dart';
import 'home_screen.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  final List<Map<String, dynamic>> _menu = [
    {
      "title": "ข่าวสาร",
      "icon": Icons.newspaper,
      "srceen": HomeScreen(),
    },
    {
      "title": "ติดต่อเรา",
      "icon": Icons.newspaper,
      "srceen": ContactScreen(),
    },
    {
      "title": "เกี่ยวกับเรา",
      "icon": Icons.newspaper,
      "srceen": AboutScreen(),
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_menu[_currentIndex]['title']),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Charuangchai Sakit'),
            accountEmail: Text('charuangchai8965@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              radius: 50,
              backgroundImage: Image.network(
                      'https://scontent.fbkk12-2.fna.fbcdn.net/v/t39.30808-6/276299837_105722392090801_2267893037879231730_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=39kG51jSnAkAX_jQ_ro&_nc_ht=scontent.fbkk12-2.fna&oh=00_AT9S3bDB-WAi0Cm6FO1wntNyco36_lN5IHwkgzKbipVWzw&oe=631892CE')
                  .image,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("หน้าหลัก"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("จัดการโปรไฟล์ของฉัน"),
          )
        ]),
      ),
      body: _menu[_currentIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: _menu
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e['icon']),
                label: e['title'],
              ),
            )
            .toList(),
      ),
    );
  }
}