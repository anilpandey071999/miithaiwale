//Data arrange and display
final sweetliked = User(
  sweet: [
    Sweets(
      food: gulabjamun,
    ),
    Sweets(
      food: jalebi,
    ),
    Sweets(
      food: kajukatli,
    ),
    Sweets(
      food: laddoo,
    ),
    Sweets(
      food: rasgulla,
    ),
    Sweets(
      food: burfi,
    ),
  ],
);

//Data of Sweets You Like
final gulabjamun =
    Food(imageUrl: 'assets/gulabjamun.jpeg', name: 'Gulab Jamun', price: 50);
final jalebi = Food(imageUrl: 'assets/jalebi.jpeg', name: 'Jalebi', price: 70);
final kajukatli =
    Food(imageUrl: 'assets/kajukatli.jpeg', name: 'Kaju Katli', price: 150);
final laddoo = Food(imageUrl: 'assets/laddoo.jpeg', name: 'Laddoo', price: 40);
final rasgulla =
    Food(imageUrl: 'assets/rasgulla.jpeg', name: 'Rasgulla', price: 60);
final burfi = Food(imageUrl: 'assets/burfi.jpeg', name: 'Burfi', price: 100);

//Near By Shop Data
final _restaurant0 = NearbyShop(
  imageUrl: 'assets/restaurant0.jpg',
  name: 'Restaurant 0',
  address: 'Chembur West, Mumbai',
  //rating: 5,
  //menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = NearbyShop(
  imageUrl: 'assets/restaurant1.jpg',
  name: 'Restaurant 1',
  address: 'Chembur West, Mumbai',
  //rating: 4,
  //menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = NearbyShop(
  imageUrl: 'assets/restaurant2.jpg',
  name: 'Restaurant 2',
  address: 'Chembur West, Mumbai',
  //rating: 4,
  //menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = NearbyShop(
  imageUrl: 'assets/restaurant3.jpg',
  name: 'Restaurant 3',
  address: 'Chembur West, Mumbai',
  //rating: 2,
  //menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = NearbyShop(
  imageUrl: 'assets/restaurant4.jpg',
  name: 'Restaurant 4',
  address: 'Chembur West, Mumbai',
  //rating: 3,
  //menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<NearbyShop> nearbyshop = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

//Classes
class User {
  final List<Sweets> sweet;

  User({
    this.sweet,
  });
}

class Sweets {
  final Food food;

  Sweets({
    this.food,
  });
}

class Food {
  final String imageUrl;
  final String name;
  final double price;

  Food({
    this.imageUrl,
    this.name,
    this.price,
  });
}

class NearbyShop {
  final String imageUrl;
  final String name;
  final String address;
  //final int rating;
  //final List<Food> menu;

  NearbyShop({
    this.imageUrl,
    this.name,
    this.address,
    //this.rating,
    //this.menu,
  });
}
