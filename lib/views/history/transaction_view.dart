import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'transaction_viewModel.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactionViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        backgroundColor: kcWhite,
        body: model.isBusy || model.transactions == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : model.transactions!.isEmpty
                ? Container(
                    child: const Center(
                      child: Text("No transactions"),
                    ),
                  )
                : Container(
                    child: ListView(
                      children: model.transactions!
                          .map((e) => ListTile(
                                title: Text(e.first_name!),
                              ))
                          .toList(),
                    ),
                  ),
      ),
      viewModelBuilder: () => TransactionViewModel(),
    );
  }
}
