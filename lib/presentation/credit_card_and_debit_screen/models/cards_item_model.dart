import '../../../core/app_export.dart';/// This class is used in the [cards_item_widget] screen.
class CardsItemModel {CardsItemModel({this.debitCardNumber, this.cardholder, this.dominicOvo, this.cardsave, this.debitCardExpiry, this.id, }) { debitCardNumber = debitCardNumber  ?? Rx("6326    9124    8124    9875");cardholder = cardholder  ?? Rx("CARD HOLDER");dominicOvo = dominicOvo  ?? Rx("Dominic Ovo");cardsave = cardsave  ?? Rx("CARD SAVE");debitCardExpiry = debitCardExpiry  ?? Rx("06/24");id = id  ?? Rx(""); }

Rx<String>? debitCardNumber;

Rx<String>? cardholder;

Rx<String>? dominicOvo;

Rx<String>? cardsave;

Rx<String>? debitCardExpiry;

Rx<String>? id;

 }
