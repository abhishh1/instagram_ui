import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:instagram_ui/app/shared/colors.dart';
import 'package:instagram_ui/app/shared/dimensions.dart';
import 'package:instagram_ui/app/shared/textstyles.dart';

class PostBlock extends StatelessWidget {
  final Map data;
  const PostBlock({required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                hSizedBox1,
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF)
                      ]),
                      shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                        radius: 16, backgroundImage: AssetImage(data['dp'])),
                  ),
                ),
                hSizedBox2,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['name'],
                        style: KCustomTextstyle.kMedium(context, 10)),
                    Text(data['location'],
                        style: KCustomTextstyle.kMedium(context, 8))
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(EvaIcons.moreHorizontal,
                        color:
                            KConstantColors.conditionalColor(context: context)))
              ],
            ),
            SizedBox(
              height: 0.1.h,
            ),
            Container(
                child: Image.asset(data['image']),
                color: CupertinoColors.systemPurple),
            vSizedBox1,
            Row(
              children: [
                hSizedBox2,
                Row(
                  children: [
                    Icon(FontAwesomeIcons.heart,
                        size: 20,
                        color:
                            KConstantColors.conditionalColor(context: context)),
                  ],
                ),
                hSizedBox3,
                Row(
                  children: [
                    Icon(FontAwesomeIcons.comment,
                        size: 20,
                        color:
                            KConstantColors.conditionalColor(context: context)),
                  ],
                ),
                hSizedBox3,
                Row(
                  children: [
                    Icon(FontAwesomeIcons.telegramPlane,
                        size: 20,
                        color:
                            KConstantColors.conditionalColor(context: context)),
                  ],
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.bookmark,
                  size: 22,
                  color: KConstantColors.conditionalColor(context: context),
                ),
                hSizedBox2
              ],
            ),
            vSizedBox1,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hSizedBox2,
                Row(
                  children: [
                    hSizedBox1,
                    Text(data['name'],
                        style: KCustomTextstyle.kMedium(context, 10)),
                    hSizedBox2,
                    Text(data['caption'],
                        style: KCustomTextstyle.kMedium(context, 10)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text("1 minute ago",
                      style: KCustomTextstyle.kMedium(context, 8)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
