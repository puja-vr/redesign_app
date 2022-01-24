import 'package:flutter/material.dart';

class Inspired extends StatelessWidget {
  const Inspired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        color: Colors.grey.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Get Inspired",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.settings_outlined),
              ],
            ),
            SizedBox(height: 20),
            tile(),
            tile(),
            tile(),
            tile(),
          ],
        ),
      ),
    );
  }

  Card tile() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(width: 10),
            Text(
              "Baous Quotes\n\n",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "09 Aug 2021",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
