import 'package:flutter/material.dart';
import 'package:nft_ui/const.dart';
import 'package:nft_ui/detail_widgets/art_info.dart';
import 'package:nft_ui/detail_widgets/bidder_list.dart';
import 'package:nft_ui/model/art.dart';
import 'package:nft_ui/profile_widgets/tab_sliver.dart';

import 'detail_widgets/detail_banner.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  DetailPage({Key? key, required this.art}) : super(key: key);
  final tabs = ['Info', 'Bids', 'History'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool scroll) {
                  return [
                    SliverAppBar(
                      elevation: 0,
                      expandedHeight: 330,
                      backgroundColor: Button,
                      leading: icon(context, Icons.arrow_back_ios_new_outlined,
                          back: true),
                      actions: [icon(context, Icons.more_vert_outlined)],
                      flexibleSpace: FlexibleSpaceBar(
                        background: DetailBanner(art: art),
                      ),
                      pinned: true,
                    ),
                    SliverToBoxAdapter(
                      child: ArtInfo(
                        art: art,
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: TabSliver(
                          bar: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey.shade400,
                              indicatorColor: Colors.black,
                              isScrollable: true,
                              labelPadding:
                                  const EdgeInsets.only(left: 5, right: 40),
                              tabs: tabs
                                  .map((e) => Tab(
                                        child: Text(
                                          e,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ))
                                  .toList()),
                          space: false),
                      pinned: true,
                    )
                  ];
                },
                body: TabBarView(
                  children: [
                    ListView(
                      children: [],
                    ),
                    BidderList(scrollKey: 'Bids', bidList: art.bidList!),
                    BidderList(scrollKey: 'History', bidList: art.hisList!)
                  ],
                ))),
        floatingActionButton: BuyButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  IconButton icon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
        onPressed: () {
          back ? Navigator.pop(context) : null;
        },
        splashRadius: 25,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ));
  }

  Widget BuyButton() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 56,
        child: RawMaterialButton(
            onPressed: () {},
            fillColor: Button,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
            child: Container(
                child: Text('Buy it now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )))));
  }
}
