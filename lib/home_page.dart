import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> tabs = [];

  @override
  void initState() {
    super.initState();
    tabs.add(tab("Technology"));
    tabs.add(tab("Business"));
    tabs.add(tab("Entertainment"));
    tabs.add(tab("Sports"));
    tabs.add(tab("Health"));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "vision-x News App",
          ),
          elevation: 0,
          bottom: TabBar(
            tabs: tabs,
            isScrollable: true,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: tabs
              .map(
                (model) => Container(
                  child: Text(
                    model.toString(),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget tab(String tabName) {
    return Tab(text: tabName);
  }
}
