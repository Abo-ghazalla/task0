import 'package:Task/screen/home_screen.dart';
import 'package:Task/models/person.dart';
import 'package:Task/provider/all_accounts.dart';
import 'package:flutter/cupertino.dart';

class AccountsToShow with ChangeNotifier {
  FilterOption _currentOption = FilterOption.All;
  FilterOption get getCurrentOption => _currentOption;

  List<Person> _accountsToShow =all..shuffle();
     // all.where((person) => person.isDoctor).toList();
  List<Person> get getaccountsToShow => _accountsToShow;
  changeAccountsToShow(FilterOption newOption) {
    if (newOption == _currentOption) return;
   // _accountsToShow.clear();
    switch (newOption) {
      case FilterOption.OnlyDoctors:
        _currentOption = FilterOption.OnlyDoctors;
        _accountsToShow = all.where((person) => person.isDoctor).toList();
        print("1");
        break;
      case FilterOption.OnlyPatients:
        _currentOption = FilterOption.OnlyPatients;
        _accountsToShow = all.where((person) => !person.isDoctor).toList();
        print("2");
        break;
      default:
        _currentOption = FilterOption.All;
        _accountsToShow = all..shuffle();
        print("3");
    }
    notifyListeners();
  }
}
