import 'package:velocity_x/velocity_x.dart';
import 'package:vxstate/vxstate.dart';
import 'package:flutter_application_2/models/cart.dart';
import 'package:flutter_application_2/models/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
