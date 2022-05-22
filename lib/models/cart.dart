import 'dart:ffi';

import 'package:flutter_application_2/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;
//collection of Ids - store Ids of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get item in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  //add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}