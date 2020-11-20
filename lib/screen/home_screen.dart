import 'package:Task/provider/accounts_to_show.dart';
import 'package:Task/sizeConfig.dart';
import 'package:Task/widgets/list_type.dart';
import 'package:Task/widgets/person_card.dart';
import 'package:Task/screen/screen_sections/screen_top.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

enum FilterOption { OnlyDoctors, OnlyPatients, All }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Column(
          children: [
            ScreenTop(),
            ListType(),
            Consumer<AccountsToShow>(
              builder: (_, acc, __) => Expanded(
                child: ListView.builder(
                  itemBuilder: (_, i) => PersonCard(
                    person: acc.getaccountsToShow[i],
                  ),
                  itemCount: acc.getaccountsToShow.length,
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 7,
              child: TabBar(
                unselectedLabelColor: Color(0xFF909CB4),
                labelColor: Theme.of(context).primaryColor,
                tabs: [
                  Icon(Icons.home),
                  Icon(Icons.chat_bubble_outline),
                  Icon(Icons.card_membership),
                  Icon(Icons.calendar_today),
                  Icon(Icons.person_outline),
                ],
                indicatorColor: Theme.of(context).primaryColor,
                indicator: MaterialIndicator(
                  height: SizeConfig.safeBlockVertical * .5,
                  tabPosition: TabPosition.top,
                  color: Theme.of(context).primaryColor,
                  topLeftRadius: 0,
                  topRightRadius: 0,
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFFECEFF1),
    );
  }
}
