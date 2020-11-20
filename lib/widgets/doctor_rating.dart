import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class DoctorRating extends StatelessWidget {
  final double rate;

  const DoctorRating({Key key, this.rate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            "$rate",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(2),
      ),
      padding: EdgeInsets.all(SizeConfig.safeAverage),
      margin: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 1.5),
    );
  }
}
