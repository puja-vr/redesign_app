import 'package:flutter/material.dart';
import 'package:steps_challenge/screens/home.dart';
import 'package:steps_challenge/screens/inspired.dart';
import 'package:steps_challenge/screens/leaderboard.dart';
import 'package:steps_challenge/screens/progress.dart';

class Tabs extends StatefulWidget {
  static String routeName = "/tabs";
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 4);

    _controller.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            )),
          ),
          child: TabBar(
            controller: _controller,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey[800],
            labelColor: Colors.blue[900],
            labelStyle: TextStyle(fontSize: 10),
            tabs: [
              Tab(
                icon: Icon(
                    _controller.index == 0 ? Icons.home : Icons.home_outlined,
                    color: _controller.index == 0
                        ? Colors.blue[900]
                        : Colors.grey[800]),
                text: "Home",
              ),
              Tab(
                icon: Icon(
                    _controller.index == 1
                        ? Icons.timeline
                        : Icons.timeline_outlined,
                    color: _controller.index == 1
                        ? Colors.blue[900]
                        : Colors.grey[800]),
                text: "Progress",
              ),
              Tab(
                icon: Icon(
                    _controller.index == 2
                        ? Icons.leaderboard
                        : Icons.leaderboard_outlined,
                    color: _controller.index == 2
                        ? Colors.blue[900]
                        : Colors.grey[800]),
                text: "Leaderboard",
              ),
              Tab(
                icon: Icon(
                    _controller.index == 3
                        ? Icons.notifications
                        : Icons.notifications_outlined,
                    color: _controller.index == 3
                        ? Colors.blue[900]
                        : Colors.grey[800]),
                text: "Get Inspired",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Home(),
            Progress(),
            Leaderboard(),
            Inspired(),
          ],
        ),
      ),
    );
  }
}
