import 'package:flutter/material.dart';
import 'package:nft_ui/model/profile.dart';
import 'package:nft_ui/profile_widgets/custom_grid.dart';
import 'package:nft_ui/profile_widgets/person_profile.dart';
import 'package:nft_ui/profile_widgets/tab_sliver.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final profile = Profile.generateProfile();
  final tabs = ['Creations', 'Collections'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: icon(Icons.arrow_back_ios_new_outlined),
        actions: [icon(Icons.more_vert_outlined)],
      ),
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool index) {
                return [
                  SliverToBoxAdapter(
                      child: PersonInfo(
                    profile: profile,
                  )),
                  SliverPersistentHeader(
                    delegate: TabSliver(
                      space: false,
                      bar: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.shade400,
                        indicatorColor: Colors.black,
                        tabs: tabs
                            .map((e) => Tab(
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  CustomGrid(list: profile.creations!, scrollKey: 'Creations'),
                  CustomGrid(
                      list: profile.collections!, scrollKey: 'Collections'),
                ],
              ))),
    );
  }

  IconButton icon(IconData icon) {
    return IconButton(
        onPressed: () {},
        splashRadius: 25,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ));
  }
}
