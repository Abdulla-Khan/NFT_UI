import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_ui/model/art.dart';
import 'package:nft_ui/model/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  final Profile profile = Profile.generateProfile();
  ArtInfo({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              iconText(
                profile.imgUrl!,
                'Creator',
                profile.twitter!.substring(1),
                0,
              ),
              SizedBox(width: 85),
              iconText(
                  'assets/images/eth.png', 'Current bid', '${art.price} ETH', 8)
            ],
          ),
          SizedBox(height: 25),
          Text(
            art.desc!,
            style: TextStyle(
              wordSpacing: 3,
              height: 1.3,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }

  iconText(String imgUrl, String title, String text, double padding) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: Colors.grey.shade200, shape: BoxShape.circle),
          child: Image.asset(imgUrl),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, height: 1.5))
          ],
        )
      ],
    );
  }
}
