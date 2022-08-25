import 'package:cached_network_image/cached_network_image.dart';
import 'package:egczacademy/models/image_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/global.dart';
import '../../color.dart';

class DialogWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final ImageModel? imageUrl;
  const DialogWidget({
    Key? key,
    required this.title,
    required this.description,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      children: [
        Container(
          color: kcWhite,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title ?? "No Title",
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 277.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: backgroundColor,
                              size: 20.w,
                            ),
                            Container(
                              width: 230.w,
                              height: 230.h,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30)),
                                  color: kcWhite,
                                  image: DecorationImage(
                                      fit: BoxFit.contain,
                                      opacity: imageUrl == null ? 0.1 : 1.0,
                                      image: imageUrl == null
                                          ? const AssetImage(
                                                  "assets/images/noImage.png")
                                              as ImageProvider
                                          : CachedNetworkImageProvider(
                                              "$urlServer/${imageUrl!.path}/${imageUrl!.filename}"))),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: backgroundColor,
                              size: 20.w,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 58.h,
                width: double.infinity,
                color: Colors.black,
                child: Center(
                  child: SizedBox(
                    width: 277.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Référence",
                                style:
                                    TextStyle(color: kcWhite, fontSize: 11.sp),
                              ),
                              Text(
                                "SH2-BUSH-CER",
                                style: TextStyle(
                                    color: kcWhite,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Marque",
                              style: TextStyle(color: kcWhite, fontSize: 11.sp),
                            ),
                            Text(
                              "CZ",
                              style: TextStyle(
                                  color: kcWhite,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 20.h),
                        child: Text(
                          description ?? "No Description",
                          maxLines: 14,
                          style: TextStyle(
                            fontSize: 11.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: backgroundColor,
            ))
      ],
    ));
  }
}
