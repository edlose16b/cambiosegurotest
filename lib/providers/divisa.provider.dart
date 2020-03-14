import 'package:flutter/material.dart';

enum Divisas { dollar, sol }

class DivisaProvider with ChangeNotifier {
  Divisas divisaSelected = Divisas.dollar;

  void changeDivisa(Divisas newDivisa) {
    this.divisaSelected = newDivisa;
    notifyListeners();
  }

  void toggleDivisa() {
    this.divisaSelected =
        this.divisaSelected == Divisas.dollar ? Divisas.sol : Divisas.dollar;
    notifyListeners();
  }
}
