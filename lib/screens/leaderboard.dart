import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        color: Colors.grey.shade50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Leaderboard",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "Last Updated : ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "05-08-2021 10:51 AM",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.settings_outlined),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Stack(alignment: AlignmentDirectional.center, children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 4,
                      ),
                    ),
                  ),
                  Container(
                    height: 67,
                    width: 67,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                ]),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sagar Yeole",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "sagaryeole@yahoo.com",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Image.asset("assets/trophy.png", height: 15),
                    SizedBox(width: 10),
                    Text(
                      "2",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Steps",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  "1086",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Category",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Text('500K Step Challenge'),
                  value: 'one',
                ),
                DropdownMenuItem<String>(
                  child: Text('250K Step Challenge'),
                  value: 'two',
                ),
                DropdownMenuItem<String>(
                  child: Text('100K Step Challenge'),
                  value: 'three',
                ),
              ],
              onChanged: (String? value) {},
              isExpanded: true,
              hint: Text('Select Item'),
              value: "one",
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade50),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.text,
              onSaved: (newValue) {},
              textInputAction: TextInputAction.done,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search by name or rank",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade50),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 10),
            tile(
                kcolor: Colors.orange,
                name: "Venkat P",
                steps: "1781",
                trophy: "1"),
            tile(
                kcolor: Colors.purple,
                name: "Sagar Yeole",
                steps: "1086",
                trophy: "2"),
          ],
        ),
      ),
    );
  }

  Card tile(
      {Color? kcolor,
      required String name,
      required String steps,
      required String trophy}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              minRadius: 30,
              backgroundColor: kcolor,
              child: Text(
                name[0],
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  steps,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Image.asset("assets/trophy.png", height: 15),
                SizedBox(width: 10),
                Text(
                  trophy,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
