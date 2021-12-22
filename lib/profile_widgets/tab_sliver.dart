import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabSliver extends SliverPersistentHeaderDelegate {
  final TabBar bar;
  final bool space;
  TabSliver({required this.bar, required this.space});

  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      padding: EdgeInsets.only(
        left: 15,
        right: space ? 120 : 15,
      ),
      child: bar,
    );
  }

  @override
  double get maxExtent => bar.preferredSize.height;

  @override
  double get minExtent => bar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
