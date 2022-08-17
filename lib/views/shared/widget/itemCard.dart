import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final String reference;
  final String? extraButton;
  const ItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.brand,
    required this.reference,
    this.extraButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size(context).width,
          height: 94,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: greyLighter,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 97.w,
                height: size(context).height,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30)),
                    color: kcWhite,
                    image: DecorationImage(
                        image: AssetImage("assets/images/$image.png"))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        child: Text(
                          "Glock 19 Gen 5",
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      verticalSpaceMedium(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Référence",
                                style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                "SH2-BUSH-CER".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          horizontalSpaceLarge(),
                          Column(
                            children: [
                              const Text(
                                "Marque",
                                style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                "CZ".toUpperCase(),
                                style: const TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        extraButton == null
            ? const SizedBox()
            : Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: greyLight,
                  height: 25,
                  width: 79,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "3",
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " boîtes de 50",
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 8,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                ),
              )
      ],
    );
  }
}