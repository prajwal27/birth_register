import 'package:birth_register/models/notification_item.dart';
import 'package:birth_register/utils/constants.dart';
import 'package:birth_register/utils/text_styles.dart';
import 'package:flutter/material.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        appBar: AppBar(
          backgroundColor: kwhite,
          title: BoldText(notifications, 25, kblack),
          centerTitle: true,
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: notificationsList.map((item) => individualNotification(item)).toList()
          ),
        ));
  }

  Padding individualNotification(NotificationItem notificationItem) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,8,8,8),
      child: Container(
        height: 100,
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BoldText(notificationItem.title, 20.0, kblack),
                    Icon(Icons.more_horiz,size: 20.0,color: kblack,)
                  ],
                ),
                NormalText(notificationItem.description,kgreyDark,16),
                NormalText(notificationItem.time,kdarkBlue,12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
