import 'package:flutter/widgets.dart';
import 'package:provider_shopper/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CartModel extends ChangeNotifier {
  final CatalogModel _catalogModel;
  final List<int> _itemIds;

  CartModel(this._catalogModel, CartModel previous)
    : assert(_catalogModel != null),
    _itemIds = previous?._itemIds ?? [];
    // _itemIds = previous._itemIds;

  CartModel.empty() :
    _catalogModel = null,
    _itemIds = [];
  
  List<Item> get items => _itemIds.map((id) => _catalogModel.getById(id)).toList();
  
  int get totalPrice =>
    items.fold(0, (total, current) => total + current.price); 

  void add(Item item) {
    _itemIds.add(item.id);

    notifyListeners();
  }
}