import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:egczacademy/views/shared/color.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';

class ItemCard extends StatelessWidget {
  final String? image;
  final String title;
  final String brand;
  final String reference;
  final String? extraButton;
  final String? titleQuantity;
  const ItemCard({
    Key? key,
    this.image,
    required this.title,
    required this.brand,
    required this.reference,
    required this.titleQuantity,
    this.extraButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size(context).width,
          height: 145.h,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: greyLighter,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(30)),
                child: Container(
                    width: 97.w,
                    height: size(context).height,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30))),
                    child: image == null
                        ? Image.asset("assets/images/noImage.png")
                        : CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: image!,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator.adaptive(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.black,
                                ),
                                backgroundColor: Colors.grey,
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      verticalSpaceSmall(),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Référence",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 8,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      title,
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            horizontalSpace(40.w),
                            Expanded(
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Marque",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 8,
                                      ),
                                    ),
                                    Text(
                                      brand.toUpperCase(),
                                      style: const TextStyle(
                                          fontFamily: 'ProductSans',
                                          height: 1,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
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
                  width: 95.w,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        extraButton!,
                        style: const TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        titleQuantity!,
                        style: const TextStyle(
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
