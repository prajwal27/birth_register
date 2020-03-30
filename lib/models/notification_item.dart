import 'package:google_maps_flutter/google_maps_flutter.dart';

class NotificationItem {
  String title;
  String description;
  String time;

  NotificationItem(
      {this.title,
        this.description,
        this.time});
}

final List<NotificationItem> notificationsList = [
  NotificationItem(
      title: 'Upcoming Vaccination',
      description: 'Polio Vaccination due in 1 day ....',
      time: "07,Mar at 15:30 pm"
  ),
  NotificationItem(
      title: 'New Video Uploaded',
      description: 'Checkout about CoronaVirus Vaccine ....',
      time: "31,Mar at 11:30 pm"
  )
];