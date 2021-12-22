import 'bidder.dart';

class Art {
  String? imgUrl, name, desc;
  num? price;
  List<Bidder>? bidList;
  List<Bidder>? hisList;
  Art(
      {this.imgUrl,
      this.name,
      this.desc,
      this.price,
      this.bidList,
      this.hisList});
}
