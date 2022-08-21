import 'package:flutter/material.dart';

import 'utility.dart';

class SeeAllWidget extends StatelessWidget {
  SeeAllWidget({Key? key, this.Category, this.SeeAll}) : super(key: key);
  String? Category = "";
  String? SeeAll = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Category ?? "Category"),
        TextButton(onPressed: () {}, child: Text(SeeAll ?? "Sell All"))
      ],
    );
  }
}

class PopularJobListWidget extends StatelessWidget with ColorsUtiliy {
  PopularJobListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderUtility().circularBorderRadius20),
        color: Colors.indigo,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderUtility().circularBorderRadius10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/nike_iconn.png"),
                      ),
                    ),
                    SizedBox(
                      width: SizedBoxUtility().sizedBox10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Senior UI Designer",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: whiteColor),
                          ),
                          Text(
                            "Nike",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.save_sharp,
                      color: whiteColor,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: white24Color,
                          borderRadius: BorderUtility().circularBorderRadius20),
                      child: Center(
                        child: Text(
                          "Design",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: whiteColor),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: white24Color,
                          borderRadius: BorderUtility().circularBorderRadius20),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Full Time",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: whiteColor),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: white24Color,
                          borderRadius: BorderUtility().circularBorderRadius20),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Part Time",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: whiteColor),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$30-50k/year',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: whiteColor),
                    ),
                    Text(
                      "New York, USA",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: whiteColor),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget with ColorsUtiliy {
  SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderUtility().circularBorderRadius20,
                boxShadow: [BoxShadow(blurRadius: 8, color: lightBlueAccent)]),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: whiteColor,
                  hoverColor: whiteColor,
                  filled: true,
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderUtility().circularBorderRadius20),
                  isDense: true),
            ),
          ),
        ),
        SizedBox(width: SizedBoxUtility().sizedBox10),
        Expanded(
          flex: 1,
          child: Container(
            height: ContainerUtility().containerHight50,
            child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.settings_applications_outlined)),
          ),
        )
      ],
    );
  }
}

class UserDetailWidget extends StatelessWidget {
  const UserDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/profile_pic.jpg")),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello"),
              Text(
                "Mukter H",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ),
        Spacer(flex: 3),
        Expanded(flex: 1, child: const Icon(Icons.add_alert))
      ],
    );
  }
}

class RecentJobWidget extends StatelessWidget {
  const RecentJobWidget({
    Key? key,
    required this.whiteColor,
    required this.blueGreyColor,
    required this.blackColor,
  }) : super(key: key);

  final Color whiteColor;
  final Color blueGreyColor;
  final Color blackColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        // shrinkWrap: true,

        children: [
          // popularJobListWidget(whiteColor: whiteColor),
          // popularJobListWidget(whiteColor: whiteColor),
          RecentJobListWidget(
              whiteColor: whiteColor,
              blueGreyColor: blueGreyColor,
              blackColor: blackColor),
          RecentJobListWidget(
              whiteColor: whiteColor,
              blueGreyColor: blueGreyColor,
              blackColor: blackColor),
          RecentJobListWidget(
              whiteColor: whiteColor,
              blueGreyColor: blueGreyColor,
              blackColor: blackColor)

        ],
      ),
    );
  }
}

class RecentJobListWidget extends StatelessWidget {
  const RecentJobListWidget({
    Key? key,
    required this.whiteColor,
    required this.blueGreyColor,
    required this.blackColor,
  }) : super(key: key);

  final Color whiteColor;
  final Color blueGreyColor;
  final Color blackColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(spreadRadius: -15, blurRadius: 20, color: Colors.black26)
        ]),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderUtility().circularBorderRadius20),
          color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: blueGreyColor,
                            borderRadius:
                                BorderUtility().circularBorderRadius10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/google_icon.png"),
                        ),
                      ),
                      SizedBox(
                        width: SizedBoxUtility().sizedBox10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Designer",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(color: blackColor),
                            ),
                            Text(
                              "\$8-10k/month",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: blackColor),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.save_sharp,
                        color: blackColor,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        // width: 120,

                        child: const Center(
                          child: OutlinedButton(
                            onPressed: null,
                            child: Text("Junior Designer"),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        // width: 70,

                        child: const Center(
                          child: OutlinedButton(
                              onPressed: null, child: Text("Full Time")),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius:
                                BorderUtility().circularBorderRadius20),
                        child: Center(
                          child: OutlinedButton(
                              onPressed: () {}, child: Text("Apply")),
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
