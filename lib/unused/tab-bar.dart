import 'package:flutter/material.dart';

class TabControllerExampleApp extends StatelessWidget {
  const TabControllerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabControllerExample(),
    );
  }
}

const List<Tab> tabs = <Tab>[
  Tab(icon:Icon(Icons.home),text: 'Home',),
  Tab(icon:Icon(Icons.content_copy_outlined),text: 'Content'),
  Tab(icon:Icon(Icons.web_rounded),text: 'Writes',),
  Tab(icon:Icon(Icons.groups),text: 'Teams'),
  Tab(icon:Icon(Icons.phone),text: 'Contact',)
];

class TabControllerExample extends StatelessWidget {
  const TabControllerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Text(
                  '${tab.text!} Tab',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }).toList(),
          ),
        );
      }),
    );
  }
}


