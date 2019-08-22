import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/widgets/appbar.dart';

class Testimonials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Testimonials'),
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
                      'assets/images/testimonials.png',
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    'VIEW TESTIMONIALS',
                    style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: _testimonialList(context)),
        ],
      ),
    );
  }

  Widget _testimonialList(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      shrinkWrap: false,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 132,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 12,
                offset: Offset(2, 2),
              ),
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 12,
                offset: Offset(-2, -2),
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Stack(
            children: <Widget>[
              Material(
                type: MaterialType.card,
                elevation: 1,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/test_image.jpg')),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Testimonial Header ${index + 1}',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Testimonial Desription ${index + 1}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                bottom: 10,
                right: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}
