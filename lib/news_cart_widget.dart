import 'package:flutter/material.dart';

class NewsCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRect(
                  child: Image.network(
                    "https://s3.india.com/wp-content/uploads/2020/07/c31139ed45f17aa934b05e7e6306e5e3.jpg",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
