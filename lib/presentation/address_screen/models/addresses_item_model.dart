import '../../../core/app_export.dart';/// This class is used in the [addresses_item_widget] screen.
class AddressesItemModel {AddressesItemModel({this.priscekila, this.address, this.mobileNo, this.edit, this.delete, this.id, }) { priscekila = priscekila  ?? Rx("Priscekila");address = address  ?? Rx("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States");mobileNo = mobileNo  ?? Rx("+99 1234567890");edit = edit  ?? Rx("Edit");delete = delete  ?? Rx("Delete");id = id  ?? Rx(""); }

Rx<String>? priscekila;

Rx<String>? address;

Rx<String>? mobileNo;

Rx<String>? edit;

Rx<String>? delete;

Rx<String>? id;

 }
