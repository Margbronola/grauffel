import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:loadmore/loadmore.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

import '../../../../../../shared/color.dart';
import '../../../../../../shared/ui_helper.dart';
import 'caliber_filter_viewModel.dart';

class CaliberFilterView extends StatelessWidget {
  const CaliberFilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CaliberFilterViewModel>.reactive(
      onModelReady: (model) async => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "caliber".toUpperCase(),
            style: const TextStyle(color: backgroundColor),
          ),
          centerTitle: false,
          backgroundColor: kcWhite,
          iconTheme: const IconThemeData(color: backgroundColor),
          actions: [
            TextButton(
              onPressed: model.cancelFilter,
              child: Text(
                "Annuler\nfiltres".toUpperCase(),
                style: const TextStyle(color: buttonColor),
              ),
            ),
            horizontalSpaceSmall()
          ],
        ),
        body: model.isBusy
            ? Container(
                color: Colors.white,
                child: ListView(
                  children: List.generate(
                    12,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Shimmer.fromColors(
                            baseColor: greyLighter2,
                            highlightColor: Colors.white,
                            child: Container(
                              width: 300.w,
                              height: 30.h,
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                          horizontalSpaceMedium(),
                          Shimmer.fromColors(
                            baseColor: greyLighter2,
                            highlightColor: Colors.white,
                            child: Container(
                              color: Colors.white,
                              height: 30.h,
                              width: 30.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            : Container(
                color: kcWhite,
                child: LoadMore(
                    isFinish: model.isEndOfList,
                    onLoadMore: model.fetchCalibers,
                    child: ListView.builder(
                      itemCount: model.calibers!.length,
                      itemBuilder: (context, index) => GFCheckboxListTile(
                        margin: const EdgeInsets.all(0),
                        title: Text(model.calibers![index].name!.toUpperCase()),
                        size: 20,
                        activeBgColor: buttonColor,
                        type: GFCheckboxType.square,
                        activeIcon: const Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.white,
                        ),
                        onChanged: (value) {
                          model.check(value, index);
                        },
                        value: model.checked(index),
                        inactiveIcon: null,
                      ),
                    ))),
      ),
      viewModelBuilder: () => CaliberFilterViewModel(),
    );
  }
}
