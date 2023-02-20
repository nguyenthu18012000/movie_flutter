import 'package:flutter/material.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';
import 'package:movie_flutter/src/ui/home/home.dart';
import 'package:movie_flutter/src/ui/notifications/views/notification_item/notification_item.dart';

class Notifications extends StatelessWidget {
  final List<Results>? listNotification;
  const Notifications({super.key, required this.listNotification});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Home())
                      );
                    },
                    icon: const Icon(Icons.arrow_back)
                ),
                const Expanded(
                  child: Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz_rounded)
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children:
                    listNotification!.map((notification) => NotificationItem(
                      notification: notification,
                    )).toList(),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
