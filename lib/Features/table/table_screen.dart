import 'package:fingerPrint/Features/table/widget/table_page_app_bar_actions.dart';
import 'package:fingerPrint/Features/table/widget/table_view_body.dart';
import 'package:fingerPrint/core/utils/constants.dart';
import 'package:fingerPrint/core/widgets/custom_simple_app_bar.dart';
import 'package:flutter/material.dart';

class DataTableView extends StatelessWidget {
  const DataTableView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: screenSize * .07,
          child: CustomSimpleAppBar(
              appBarTitle: "الحضور والانصراف",
              leadingWidget: TablePageAppBarActions()),
        ),
        body: const TableViewBody(),
      ),
    );
  }
}
