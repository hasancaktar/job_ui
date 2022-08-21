import 'package:flutter/material.dart';
import 'package:job_ui/utility.dart';
import 'package:job_ui/allWidgets.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> with ColorsUtiliy {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingUtiliy().paddingSymmetricVertical,
        child: Column(children: [
          UserDetailWidget(),
          SizedBox(height: SizedBoxUtility().sizedBox20),
          Padding(
            padding: PaddingUtiliy().paddingSymmetricHorizontal,
            child: SearchWidget(),
          ),
          Padding(
            padding: PaddingUtiliy().paddingSymmetricHorizontal,
            child: SeeAllWidget(Category: "Popular Jobs"),
          ),
          Padding(
            padding: PaddingUtiliy().paddingSymmetricHorizontal,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: ListView(
                shrinkWrap: true,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  PopularJobListWidget(),
                  PopularJobListWidget(),
                ],
              ),
            ),
          ),
          Padding(
            padding: PaddingUtiliy().paddingSymmetricHorizontal,
            child: SeeAllWidget(Category: "Recent Jobs List"),
          ),
          Expanded(
            child: Padding(
              padding: PaddingUtiliy().paddingSymmetricHorizontal,
              child: RecentJobWidget(whiteColor: whiteColor, blueGreyColor: blueGreyColor, blackColor: blackColor),
            ),
          )
        ]),
      ),
    );
  }
}
