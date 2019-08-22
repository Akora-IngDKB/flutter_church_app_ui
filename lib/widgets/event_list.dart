import 'package:flutter/material.dart';
import 'package:flutter_church_app_ui/models/event_model.dart';

class EventList extends StatelessWidget {
  final List<Event> eventList;

  EventList(this.eventList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.grey[400],
            offset: Offset(0, -2),
            spreadRadius: 2,
          )
        ],
      ),
      child: _eventList(),
    );
  }

  Widget _eventList() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: eventList.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          key: Key(eventList[index].id),
          title: Text(eventList[index].name),
          subtitle: Text(eventList[index].venue),
          trailing: IconButton(
            onPressed: () {},
            icon: eventList[index].isPassed
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.notifications,
                    color: Theme.of(context).primaryColor,
                  ),
          ),
        );
      },
    );
  }
}
