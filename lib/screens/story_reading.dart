import 'package:aman_notification_screen/model/app_strings.dart';
import 'package:aman_notification_screen/reusable_items/back_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../reusable_items/loading_item.dart';

class StoryReading extends StatelessWidget {
  const StoryReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: StoryBackground()),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Container(
              margin: const EdgeInsets.all(8),
              width: 34,
              height: 34,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(8),
                width: 34,
                height: 34,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
              )
            ],
          ),
        )
      ],
    );
  }
}

class StoryBackground extends StatelessWidget {
  const StoryBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: CachedNetworkImage(
            imageUrl: (AppStrings.storyImageUrl),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
            placeholder: (context, url) => Container(
              child: LoadingShapes.circularShapSpinKit,
            ),
            errorWidget: (context, _, error) => const Icon(
              Icons.error_outline,
              color: Colors.red,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.35,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                    0,
                    0.1,
                    0.2,
                    0.3,
                    0.4,
                    0.5
                  ],
                      colors: [
                    Color.fromRGBO(15, 28, 41, 0),
                    Color.fromRGBO(14, 23, 32, 1.0),
                    Color.fromRGBO(14, 23, 32, 1.0),
                    Color.fromRGBO(15, 28, 41, 1.0),
                    Color.fromRGBO(15, 28, 41, 1.0),
                    Color.fromRGBO(15, 28, 41, 1.0),
                  ])),
            ),
          ),
        ),
      ],
    );
  }
}
