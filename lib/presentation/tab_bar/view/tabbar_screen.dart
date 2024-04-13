import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/presentation/tab_bar/controller/tabbarcontroller.dart';

class TabbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TurfTabController provider = Provider.of<TurfTabController>(context);
    return DefaultTabController(
      length: provider.tabList.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.green,
            tabs: List.generate(
              provider.tabList.length,
                  (index) => Tab(
                text: provider.tabList[index],
              ),
            ),
            onTap: (value) {
              provider.fetchData(index: value);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TabBarView(
            children: List.generate(
              provider.screens.length,
                  (index) => provider.screens[index],
            ),
          ),
        ),
      ),
    );
  }
}

