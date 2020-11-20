import 'package:Task/sizeConfig.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.safeBlockVertical * 5,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search by category",
                isDense: true,
                hintStyle: TextStyle(color: Colors.white.withOpacity(.7)),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: .5),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white.withOpacity(.15),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 3,
      ),
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.safeBlockVertical * 2,
      ),
    );
  }
}
