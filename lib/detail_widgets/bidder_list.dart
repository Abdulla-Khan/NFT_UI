import 'package:flutter/material.dart';
import 'package:nft_ui/model/bidder.dart';

import 'bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidList;
  const BidderList({Key? key, required this.scrollKey, required this.bidList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(15),
        key: PageStorageKey(scrollKey),
        itemBuilder: (_, index) => BidderCard(
              bidder: bidList[index],
            ),
        separatorBuilder: (_, index) => const SizedBox(
              height: 15,
            ),
        itemCount: bidList.length);
  }
}
