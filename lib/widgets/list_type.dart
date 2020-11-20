import 'package:Task/screen/home_screen.dart';
import 'package:Task/provider/accounts_to_show.dart';
import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 3,
              vertical: SizeConfig.safeBlockVertical * 2,
            ),
            child: Row(
              children: [
                Consumer<AccountsToShow>(builder: (_, acc, __) {
                  final text = acc.getCurrentOption == FilterOption.All
                      ? "All"
                      : (acc.getCurrentOption == FilterOption.OnlyDoctors
                          ? "Doctor List"
                          : "Patient List");
                  return Text(
                    text,
                    style: Theme.of(context).textTheme.headline3,
                  );
                }),
                Spacer(),
                Text(
                  "Card View",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: SizeConfig.safeBlockHorizontal),
                Icon(
                  Icons.calendar_today,
                  color: Color(0xFF909CB4),
                )
              ],
            ),
          );
  }
}