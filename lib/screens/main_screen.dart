import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/widgets/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _current = 0;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1478147427282-58a87a120781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1507692049790-de58290a4334?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1529070538774-1843cb3265df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1515615424560-27cdb10de410?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1477672680933-0287a151330e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519491050282-cf00c82424b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  ];

  final List<String> quotes = [
    'Genesis 1:1\n\nGenesis quote',
    'Exodus 1:1\n\nExodus quote',
    'Leviticus 1:1\n\nLeviticus quote',
    'Matthew 1:1\n\nMatthew quote',
    'Mark 1:1\n\nMark quote',
    'Luke 1:1\n\nLuke quote',
  ];

  @override
  Widget build(BuildContext context) {
    //Auto playing carousel
    final CarouselSlider autoPlayDemo = CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      height: 280,
      autoPlayCurve: Curves.fastOutSlowIn,
      initialPage: 1,
      pauseAutoPlayOnTouch: Duration(seconds: 6),
      enlargeCenterPage: true,
      onPageChanged: (index) {
        setState(() {
          _current = index;
        });
      },
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/bible.jpg',
                image: url,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
              // child: Image.network(
              //   url,
              //   fit: BoxFit.cover,
              //   width: 1000.0,
              // ),
            ),
          );
        },
      ).toList(),
    );

    return Scaffold(
      appBar: MyAppBar(context, 'Church App'),
      body: Stack(
        alignment: Alignment.bottomCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          autoPlayDemo,
          Positioned(
            bottom: -230,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.black54,
                    offset: Offset(0, -10),
                    spreadRadius: 2,
                  )
                ],
              ),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.75,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4)),
                      );
                    }),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text(
                        'WORD OF THE DAY',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        quotes[_current],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}
