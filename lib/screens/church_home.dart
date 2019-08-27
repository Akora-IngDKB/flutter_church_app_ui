import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/widgets/appbar.dart';

class ChurchHome extends StatelessWidget {
  final menuList = <Map<String, dynamic>>[
    {
      'name': 'CONNECT',
      'image': 'assets/images/connect.png',
      'selected': true,
      'pushTo': 'CONNECT',
    },
    {
      'name': 'EVENTS',
      'image': 'assets/images/event.png',
      'selected': false,
      'pushTo': 'EVENTS',
    },
    {
      'name': 'SERMONS',
      'image': 'assets/images/sermons.png',
      'selected': false,
      'pushTo': 'SERMONS',
    },
    {
      'name': 'CHECK-IN',
      'image': 'assets/images/checkin.png',
      'selected': false,
      'pushTo': 'CHECKIN',
    },
    {
      'name': 'TESTIMONIALS',
      'image': 'assets/images/testimonials.png',
      'selected': false,
      'pushTo': 'TESTIMONIALS',
    },
    {
      'name': 'ANNOUNCEMENTS',
      'image': 'assets/images/announcement.png',
      'selected': false,
      'pushTo': 'ANNOUNCEMENT',
    },
    {
      'name': 'GIVE',
      'image': 'assets/images/give.png',
      'selected': false,
      'pushTo': 'GIVE',
    },
    {
      'name': 'WEBSITE',
      'image': 'assets/images/website.png',
      'selected': false,
      'pushTo': 'WEBSITE',
    },
    {
      'name': 'PROGRAMME SHEET',
      'image': 'assets/images/program.png',
      'selected': false,
      'pushTo': 'PROGRAMMES',
    },
    {
      'name': 'SOCIAL MEDIA',
      'image': 'assets/images/social.png',
      'selected': false,
      'pushTo': 'SOCIAL',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'GNASS KNUST'),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: buildMenu(context),
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: menuList?.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext cxt, int index) {
        return InkWell(
          splashColor: Colors.grey[350],
          onTap: () {
            Navigator.pushNamed(context, menuList[index]['pushTo']);
          },
          child: Card(
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(menuList[index]['pushTo']);
                  },
                  iconSize: 50,
                  icon: Image.asset(
                    menuList[index]['image'],
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(menuList[index]['name'])
              ],
            ),
          ),
        );
      },
    );
  }
}
