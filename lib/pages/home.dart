import 'package:flutter/material.dart';
import 'package:kodilan_mobile/assets/icons/kodilan_icon.dart';
import 'package:kodilan_mobile/components/search_button.dart';
import 'package:kodilan_mobile/components/logo.dart';
import 'package:kodilan_mobile/components/post_list.dart';
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

  TabBar get _tabBar => TabBar(
        labelStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        labelColor: CustomColors.black,
        indicatorColor: CustomColors.green,
        unselectedLabelColor: CustomColors.tabDisable,
        tabs: [
          Tab(text: 'Bugün'),
          Tab(text: 'Bu hafta'),
          Tab(text: 'Bu ay'),
          Tab(text: 'Hepsi'),
        ],
        controller: controller,
      );

  @override
  Widget build(BuildContext context) {
    final titleArea = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                title: LogoWidget(),
                actions: [
                  IconButton(
                      icon: Icon(
                        KodilanIcon.info,
                        size: 20,
                      ),
                      onPressed: () => {}),
                ],
                pinned: true,
                floating: true,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Center(
                    child: Container(
                      padding: EdgeInsets.only(top: titleArea),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: SearchButtonWidget(),
                      ),
                    ),
                  ),
                ),
                forceElevated: innerBoxIsScrolled,
                bottom: PreferredSize(
                  preferredSize: _tabBar.preferredSize,
                  child: ColoredBox(
                    color: CustomColors.background,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: _tabBar,
                    ),
                  ),
                ),
              ),
            )
          ];
        },
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: <Widget>[
            PostListWidget(),
            PostListWidget(),
            PostListWidget(),
            PostListWidget(),
          ],
        ),
      ),
    );
  }
}
