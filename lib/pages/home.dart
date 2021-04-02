import 'package:flutter/material.dart';
import 'package:kodilan_mobile/assets/icons/kodilan_icon.dart';
import 'package:kodilan_mobile/components/search_button.dart';
import 'package:kodilan_mobile/components/logo.dart';
import 'package:kodilan_mobile/constant/colors.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final titleArea = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: LogoWidget(),
            ),
            leadingWidth: MediaQuery.of(context).size.width,
            actions: [
              IconButton(icon: Icon(KodilanIcon.info), onPressed: () => {}),
            ],
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: Container(
                  padding: EdgeInsets.only(top: titleArea),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: SearchButtonWidget(),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: 13),
              labelColor: CustomColors.black,
              indicatorColor: CustomColors.green,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: CustomColors.tabDisable,
              tabs: [
                Tab(text: 'Bugün'),
                Tab(text: 'Bu Hafta'),
                Tab(text: 'Bu Ay'),
                Tab(text: 'Tüm İlanlar'),
              ],
              controller: controller,
            ),
          ),
          // SliverList(
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                Container(
                  color: CustomColors.background,
                  child: Center(child: Text("Tab bugün")),
                ),
                Container(
                  color: CustomColors.background,
                  child: Center(child: Text("Tab bu hafta")),
                ),
                Container(
                  color: CustomColors.background,
                  child: Center(child: Text("Tab bu ay")),
                ),
                Container(
                  color: CustomColors.background,
                  child: Center(child: Text("Tab tüm ilanlar")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
