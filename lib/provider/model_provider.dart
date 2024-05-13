import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ModelProvider extends ChangeNotifier {
  final dataInfoFirstName = Hive.box('dataInformationFirstName');

  void dataFirstNameAdd(String dataIncomingFirstName) {
    dataInfoFirstName.add(dataIncomingFirstName);
    notifyListeners();
  }

  void dataFirstNameUpdate(int index, String dataEditFirstName) {
    dataInfoFirstName.values.toList()[index] = dataEditFirstName;
    notifyListeners();
  }

  final dataInfoLastName = Hive.box('dataInformationLastName');

  void dataLastNameAdd(String dataIncomingLastName) {
    dataInfoLastName.add(dataIncomingLastName);
    notifyListeners();
  }

  void dataLastNameUpdate(int index, String dataEditLastName) {
    dataInfoLastName.values.toList()[index] = dataEditLastName;
    notifyListeners();
  }

  final dataInfoDateOfBirth = Hive.box('dataInformationDateOfBirth');

  void dataDateOfBirthAdd(String dataIncomingDateOfBirth) {
    dataInfoDateOfBirth.add(dataIncomingDateOfBirth);
    notifyListeners();
  }

  void dataDateOfBirthUpdate(int index, String dataEditDateOfBirth) {
    dataInfoDateOfBirth.values.toList()[index] = dataEditDateOfBirth;
    notifyListeners();
  }
}
