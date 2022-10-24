import 'package:egczacademy/views/shared/color.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'transaction_view_model.dart';

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
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black,
                  ),
                  backgroundColor: Colors.grey,
                ),
              )
            : model.transactions!.isEmpty
                ? const Center(
                    child: Text("No transactions"),
                  )
                : ListView(
                    children: model.transactions!
                        .map((e) => ListTile(
                              title: Text(e.first_name!),
                            ))
                        .toList(),
                  ),
      ),
      viewModelBuilder: () => TransactionViewModel(),
    );
  }
}
