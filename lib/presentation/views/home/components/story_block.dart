import 'package:flutter/material.dart';
import 'package:instagram_ui/app/shared/textstyles.dart';
import 'package:sizer/sizer.dart';

class StoryBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _storyData = [
      {"image": "assets/images/p_1.jpeg", "name": "Sara"},
      {"image": "assets/images/p_2.jpeg", "name": "William"},
      {"image": "assets/images/p_3.jpeg", "name": "Michael"},
      {"image": "assets/images/p_4.jpeg", "name": "Lily"},
      {"image": "assets/images/p_5.jpeg", "name": "Rohann"},
      {"image": "assets/images/p_6.jpeg", "name": "_Mina"},
      {"image": "assets/images/p_7.jpeg", "name": "Anthony12"},
    ];

    _storyBlock({required String name, required String image}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF),
                      ]),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                        radius: 26, backgroundImage: AssetImage(image)),
                  )),
              SizedBox(height: 0.3.h),
              Text(name, style: KCustomTextstyle.kMedium(context, 8))
            ],
          ),
        ),
      );
    }

    return Container(
      height: 10.h,
      width: 100.w,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _storyData.length,
        itemBuilder: (BuildContext context, int index) {
          return _storyBlock(
              name: _storyData[index]['name'],
              image: _storyData[index]['image']);
        },
      ),
    );
  }
}
