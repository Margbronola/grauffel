import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../color.dart';

class DialogWidget extends StatelessWidget {
  final String? title;
  final String? description;
  final String? brandName;
  final String? calibre;
  final String? imageUrl;
  const DialogWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.brandName,
    required this.calibre,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title ?? "No Title",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 277.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TODO: show as list values to show arrows
                            // imageUrl == null
                            //     ? const SizedBox()
                            //     : Icon(
                            //         Icons.arrow_back_ios,
                            //         color: backgroundColor,
                            //         size: 20.w,
                            //       ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                width: 230.w,
                                height: 230.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: imageUrl != null
                                    ? CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: imageUrl!,
                                        placeholder: (context, url) =>
                                            const Center(
                                                child: CircularProgressIndicator
                                                    .adaptive()),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      )
                                    : Image.asset(
                                        "assets/images/noImage.png",
                                        color: Colors.white,
                                      ),
                              ),
                            ),

                            // imageUrl == null
                            //     ? const SizedBox()
                            //     : Icon(
                            //         Icons.arrow_forward_ios,
                            //         color: backgroundColor,
                            //         size: 20.w,
                            //       )
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
                                "Marque",
                                style:
                                    TextStyle(color: kcWhite, fontSize: 11.sp),
                              ),
                              Text(
                                brandName!,
                                style: TextStyle(
                                    color: kcWhite,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        calibre == null
                            ? const SizedBox()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Calibre",
                                    style: TextStyle(
                                        color: kcWhite, fontSize: 11.sp),
                                  ),
                                  Text(
                                    calibre ?? "",
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
