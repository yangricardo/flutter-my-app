import 'package:flutter/cupertino.dart';
import 'package:my_app/layout/button-column.dart';
import 'package:my_app/layout/description-section.dart';
import 'package:my_app/layout/lake.image.dart';
import 'package:my_app/layout/section-title.dart';

class ListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      LakeImage(),
      SectionTitle(),
      ButtonColumn(),
      DescriptionSection()
    ]);
  }
}
