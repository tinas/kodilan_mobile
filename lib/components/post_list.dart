import 'package:flutter/material.dart';
import 'package:kodilan_mobile/constant/colors.dart';

class PostListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.background,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Builder(
          builder: (BuildContext context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(16.0),
                  sliver: SliverFixedExtentList(
                    itemExtent: 48.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(
                          title: Text('Item $index'),
                          subtitle: Text('Sub item $index'),
                        );
                      },
                      childCount: 30,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
