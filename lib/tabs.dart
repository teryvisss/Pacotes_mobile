import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto/screens/amazon.dart';
import 'package:projeto/screens/github.dart';
import 'package:projeto/screens/google.dart';
import 'package:projeto/screens/youtube.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  // dispose function
  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blue,
          labelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          tabs: <Tab>[
            Tab(
              icon: Icon(FontAwesomeIcons.google),
              text: "Google",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.amazon),
              text: "Amazon",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.youtube),
              text: "YouTube",
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.github),
              text: "Github",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          GoogleScreen(),
          AmazonScreen(),
          YouTubeScreen(),
          GithubScreen(),
        ],
      ),
    );
  }
}
