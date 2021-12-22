import 'package:nft_ui/model/art.dart';
import 'package:nft_ui/model/bidder.dart';

class Profile {
  String? imgUrl, name, twitter, desc, email;
  List<Art>? creations;
  List<Art>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.creations,
      this.collections});
  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.png',
        name: 'Abdullah Khan',
        twitter: '@abd2003',
        desc:
            '3D artist from Montreal, Canada. My work is all about colors,balance and emotion.',
        email: 'abd@gmail.com',
        creations: [
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/create1.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/create2.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/create3.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/create4.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/create5.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
        ],
        collections: [
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/collection1.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/collection2.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/collection3.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/collection4.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
          Art(
            bidList: Bidder.generateBidder,
            hisList: Bidder.generateHistory,
            imgUrl: 'assets/images/collection5.jpeg',
            name: 'Consume',
            price: 1.53,
            desc:
                "So happy to share to share my second collab with my dear brother @fuckrender I'm so proud of his work and accomplishments",
          ),
        ]);
  }
}
