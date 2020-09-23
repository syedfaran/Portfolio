import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageScrollProvider with ChangeNotifier {
  double _offset = 0;
  bool _firstLvl = false;
  bool _secondLvl = false;
  bool _thirdLvl = false;
  bool _hoverEffect = false;
  void scrollProviderOne(ScrollController controller) {
    controller.addListener(() {
      _offset = controller.offset;
      var status = false;
      if (controller.offset > 50) {
        status = true;
      } else {
        status = false;
      }
      _firstLvl = status;
      notifyListeners();
    });
  }
  void scrollProviderTwo(ScrollController controller) {
    controller.addListener(() {
      _offset = controller.offset;
      var status = false;
      if (controller.offset > 250) {
        status = true;
      } else {
        status = false;
      }
      _secondLvl = status;
      notifyListeners();
    });
  }
  void scrollProviderThree(ScrollController controller){
    controller.addListener(() {
      _offset = controller.offset;
      var status = false;
      if (controller.offset > 800) {
        status = true;
      } else {
        status = false;
      }
      _thirdLvl = status;
      notifyListeners();
    });
  }

  void hoverToggle(bool boots){
    _hoverEffect = boots;
    notifyListeners();
  }


  double get offset => _offset;
  bool get topLvl => _firstLvl;
  bool get secLvl => _secondLvl;
  bool get thirdLvl=>_thirdLvl;
  bool get hoverValue=>_hoverEffect;
}
