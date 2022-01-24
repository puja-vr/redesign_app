import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Progress extends StatelessWidget {
  final List content = [
    {'text': "Start Point - Sabarmati", 'support': "02 Aug\n2021"},
    {'text': "Aslali", 'support': "02 Aug"},
    {'text': "Bareja, Navagam", 'support': "02 Aug"},
    {'text': "Wasna Matar", 'support': "03 Aug"},
    {'text': "Dabhan Nadiad", 'support': "04 Aug"},
    {'text': "Nadiad Dabhan", 'support': "04 Aug"},
  ];
  Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        color: Colors.grey.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Your Progress in Bapu's path",
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
            Expanded(
              child: SingleChildScrollView(
                child: FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                    color: Colors.grey,
                    nodePosition: 0.2,
                    indicatorTheme: IndicatorThemeData(
                      color: Colors.green[800],
                      position: 0.15,
                      size: 25,
                    ),
                    connectorTheme: ConnectorThemeData(
                      thickness: 2.5,
                      color: Colors.grey,
                    ),
                  ),
                  mainAxisSize: MainAxisSize.min,
                  builder: TimelineTileBuilder.connected(
                    connectorBuilder: (context, index, type) {
                      return DashedLineConnector();
                    },
                    itemCount: content.length,
                    contentsAlign: ContentsAlign.basic,
                    indicatorBuilder: (_, index) {
                      switch (index) {
                        case 0:
                          return DotIndicator(
                            child: Icon(
                              Icons.sports_score,
                              color: Colors.white,
                              size: 15,
                            ),
                          );
                        default:
                          return DotIndicator(
                            child: Center(
                              child: Text(
                                "$index",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                      }
                    },
                    oppositeContentsBuilder: (context, i) => Container(
                      alignment: Alignment.topRight,
                      padding: i == 0
                          ? EdgeInsets.fromLTRB(0, 10, 10, 0)
                          : EdgeInsets.fromLTRB(0, 15, 10, 0),
                      child: Text(content[i]['support'],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    contentsBuilder: (context, i) => Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(content[i]['text'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  i != 0
                                      ? Icon(Icons.arrow_forward_ios_rounded,
                                          color: Colors.grey, size: 15)
                                      : SizedBox(width: 0),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 25),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/footprint.png",
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "250",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Steps",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.orange[900],
                                  size: 15,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Day",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
