import 'package:flutter/material.dart';
import 'package:movie_flutter/cores/constants.dart';
import 'package:movie_flutter/src/models/movie_popular_model.dart';

class NotificationItem extends StatelessWidget {
  final Results notification;
  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "${Constants.imageUrl}/${notification.posterPath}",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${notification.title}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text("08 Episodes"),
                    Container(
                      height: 20,
                      width: 80,
                      // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 236, 238),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Center(
                        child: Text(
                          "Update",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ),
            ),
            const Text("20/20/20")
          ],
        ),
      ),
    );
  }
}
