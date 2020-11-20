import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class AdvancedFilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical * 2),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "ADVANCED FILTERING",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: SizeConfig.safeBlockHorizontal * 4),
            Icon(
              Icons.filter_list,
              color: Colors.white,
            )
          ],
          mainAxisSize: MainAxisSize.min,
        ),
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.safeBlockVertical * 1.25,
          horizontal: SizeConfig.safeBlockHorizontal * 5,
        ),
      ),
    );
  }
}
