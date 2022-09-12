import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_list_viewModel.dart';

class CourseListView extends StatelessWidget {
  const CourseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseListViewModel>.reactive(
      builder: (context, model, child) => Container(
        color: Colors.red,
      ),
      viewModelBuilder: () => CourseListViewModel(),
    );
  }
}
