import 'package:fingerPrint/Features/table/widget/table_page_app_bar.dart';
import 'package:fingerPrint/Features/table/widget/table_page_app_bar_actions.dart';
import 'package:fingerPrint/Features/table/widget/table_view_body.dart';
import 'package:flutter/material.dart';

class DataTableView extends StatelessWidget {
  const DataTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const TablePageAppBarTitle(),
        centerTitle: true,
        actions: const [
          TablePageAppBarActions(),
        ],
      ),
      body: const TableViewBody(),
    );
  }
}
