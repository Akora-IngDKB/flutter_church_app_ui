import 'package:meta/meta.dart';

class Event {
  String id;
  String name;
  String venue;
  int time;
  bool isPassed;

  Event({
    @required this.id,
    @required this.name,
    @required this.isPassed,
    this.venue,
    this.time,
  });
}
