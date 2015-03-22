library GUI;
import 'dart:html';

part '../dom/dom.dart';


class GUI {
  Element domElement;
  UListElement __ul;
  GUI() {
    domElement = document.createElement('div');
    __ul = document.createElement('ul');
    domElement.append(__ul);
    //DOM class
  }
}