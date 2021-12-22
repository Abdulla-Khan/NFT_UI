import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_ui/const.dart';
import 'package:nft_ui/model/bidder.dart';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard({Key? key, required this.bidder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random rnd = Random();
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pinkList[rnd.nextInt(9) + 1]),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Bid placed by ${bidder.name}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${DateFormat.yMMMd().format(bidder.date!)} at ${bidder.date!.hour}:${bidder.date!.minute}',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            '${bidder.price!} ETH',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ]);
  }
}
