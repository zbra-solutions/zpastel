import 'package:json_annotation/json_annotation.dart';
import 'package:zpastel/model/StorableEntity.dart';

import 'Pastel.dart';

part 'Order.g.dart';

@JsonSerializable(explicitToJson: true)
class Order implements StorableEntity {
  @override
  String id;

  List<Pastel> items = [];

  String createdByUsername;

  @override
  String createdById;
  @override
  DateTime createdOn;
  @override
  String lastModifiedById;
  @override
  DateTime lastModifiedOn;

  Order();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  void addItem(Pastel item) {
    item.orderId = id;
    items.add(item);
  }
}
