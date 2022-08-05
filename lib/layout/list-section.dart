import 'package:flutter/cupertino.dart';
import 'package:my_app/layout/column-section.dart';

class ListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ColumnSection(),
      ColumnSection(),
    ]);
  }
}
