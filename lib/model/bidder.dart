class Bidder {
  String? name;
  DateTime? date;
  num? price;
  Bidder({this.name, this.date, this.price});
  static List<Bidder> generateBidder = [
    Bidder(
      name: 'Jeeny',
      date: DateTime.now(),
      price: 1.53,
    ),
    Bidder(
      name: 'Kevin',
      date: DateTime.now(),
      price: 1.51,
    ),
    Bidder(
      name: 'Tobey',
      date: DateTime.now(),
      price: 1.50,
    ),
    Bidder(
      name: 'Andrew',
      date: DateTime.now(),
      price: 1.10,
    ),
    Bidder(
      name: 'Tom',
      date: DateTime.now(),
      price: 1.31,
    ),
    Bidder(
      name: 'Maguire',
      date: DateTime.now(),
      price: 1.90,
    ),
    Bidder(
      name: 'Garfeild',
      date: DateTime.now(),
      price: 1.30,
    ),
  ];
  static List<Bidder> generateHistory = [
    Bidder(
      name: 'William',
      date: DateTime.now(),
      price: 1.53,
    ),
    Bidder(
      name: 'Janes',
      date: DateTime.now(),
      price: 1.51,
    ),
    Bidder(
      name: 'Evelyn',
      date: DateTime.now(),
      price: 1.50,
    ),
    Bidder(
      name: 'Harper',
      date: DateTime.now(),
      price: 1.10,
    ),
    Bidder(
      name: 'Ella',
      date: DateTime.now(),
      price: 1.31,
    ),
    Bidder(
      name: 'Jackson',
      date: DateTime.now(),
      price: 1.90,
    ),
    Bidder(
      name: 'Avery',
      date: DateTime.now(),
      price: 1.30,
    ),
  ];
}
