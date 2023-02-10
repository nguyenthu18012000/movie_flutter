import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 380,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/poster_demo.jpeg"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Expanded(child: Text('')),
                Container(
                  height: 270,
                ),
                const Text(
                  'Dr Strange 2',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                  ),
                ),
                const Text(
                  'Action, Superhero, science fiction,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.only(top:3, bottom: 3, left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.red),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "  Play",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0),
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "  Play",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]
    );
  }
}