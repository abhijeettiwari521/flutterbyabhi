class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphone 12 pro",
      desc: "Apple iphone 12 gen",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71MHTD3uL4L.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": Item,
        "image": image,
      };
}
