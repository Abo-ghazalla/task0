import 'package:Task/screen/home_screen.dart';
import 'package:Task/sizeConfig.dart';
import 'package:Task/widgets/advanced_filter_button.dart';
import 'package:Task/widgets/filter_item.dart';
import 'package:flutter/material.dart';

class ScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text(
                "Clear",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Sort By",
              style: Theme.of(context).textTheme.headline2,
            ),
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Done",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        Divider(color: Color(0xFF909CB4)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 2,
            vertical: SizeConfig.safeBlockVertical,
          ),
          child: Row(
            children: [
              FilterItem(thisOption: FilterOption.OnlyDoctors),
              FilterItem(thisOption: FilterOption.OnlyPatients),
              FilterItem(thisOption: FilterOption.All),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        AdvancedFilterButton()
        
      ],
      mainAxisSize: MainAxisSize.min,
    );
  }
}
