import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/models/event_model.dart';
import 'package:flutter_church_app_ui/widgets/appbar.dart';
import 'package:flutter_church_app_ui/widgets/event_calender.dart';
import 'package:flutter_church_app_ui/widgets/event_list.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Events'),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8),
                width: 250,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: null,
                      iconSize: 30,
                      icon: Image.asset(
                        'assets/images/event.png',
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'EVENTS',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            EventCalender(),
            Flexible(
              child: EventList([
                Event(
                  id: '0',
                  name: "First Sabbath",
                  venue: 'Church Auditorium',
                  isPassed: true,
                ),
                Event(
                  id: '1',
                  name: "Hymnody '19",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
                Event(
                  id: '2',
                  name: "Prophecy Seminar",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
                Event(
                  id: '3',
                  name: "Koncerto '20",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
