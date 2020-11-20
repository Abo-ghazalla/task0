import 'package:Task/screen/home_screen.dart';
import 'package:Task/provider/accounts_to_show.dart';
import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterItem extends StatelessWidget {
  final FilterOption thisOption;

  const FilterItem({Key key, this.thisOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentOption = Provider.of<AccountsToShow>(context).getCurrentOption;
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Icon(
                icon(),
                color: Theme.of(context).primaryColor,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF909CB4).withOpacity(.15),
                shape: BoxShape.circle,
              ),
              height: SizeConfig.safeAverage * 8,
              width: SizeConfig.safeAverage * 8,
              margin: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical),
            ),
            Text(
              text(),
              style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: currentOption == thisOption
                      ? Theme.of(context).primaryColor
                      : null),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: currentOption == thisOption
                  ? Theme.of(context).primaryColor
                  : Color(0xFF909CB4).withOpacity(.5),
              width: 2),
        ),
        width: SizeConfig.safeBlockHorizontal * 29,
        height: SizeConfig.safeBlockHorizontal * 29,
      ),
      onTap: () => Provider.of<AccountsToShow>(context, listen: false)
          .changeAccountsToShow(thisOption),
    );
  }

  IconData icon() {
    switch (thisOption) {
      case FilterOption.OnlyDoctors:
        return Icons.person;
      case FilterOption.OnlyPatients:
        return Icons.person_outline;
      default:
        return Icons.people_outline;
    }
  }

  String text() {
    switch (thisOption) {
      case FilterOption.OnlyDoctors:
        return "Only Doctors";
      case FilterOption.OnlyPatients:
        return "Only Patients";
      default:
        return "All";
    }
  }
}
