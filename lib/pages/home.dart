import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtubeclone/components/custom_appbar.dart';
import 'package:youtubeclone/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: CustomAppBar(),
          floating: true,
          snap:true
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap:(){
                  Get.toNamed("/detail/123123123");
                },
                child: VideoWidget(),
              );
            },
            childCount: 10
          ),
        )
      ],
    ));
  }
}
