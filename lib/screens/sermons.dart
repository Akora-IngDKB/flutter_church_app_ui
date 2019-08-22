import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/widgets/appbar.dart';

class SermonsPage extends StatefulWidget {
  @override
  _SermonsPageState createState() => _SermonsPageState();
}

class _SermonsPageState extends State<SermonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Sermons'),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: null,
                    iconSize: 50,
                    icon: Image.asset(
                      'assets/images/sermons.png',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'SERMONS',
                    style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: _sermonsList(context)),
        ],
      ),
    );
  }

  Widget _sermonsList(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(bottom: 60),
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Material(
                type: MaterialType.card,
                elevation: 0,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/test_image.jpg',
                        fit: BoxFit.fill,
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -40,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'All Or Nothing',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5),
                          Text('By: DKB'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 20,
                            child: Icon(Icons.star, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundColor: Colors.indigo,
                            radius: 18,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
