import 'dart:html' as html;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/assets/assets_path.dart';
import '../../utils/components/custom_text_widget.dart';
import '../../utils/responsive/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  /// List of icons
  List imageList = [
    dart,
    java,
    kotlin,
    swift,
    flutter,
    ios,
    android,
    firebase,
    git,
    github,
    jira,
    bitbucket,
    xcode,
    vscode,
    figma,
    adobexd,
    api,
    localDB,
    cicd,
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ResponsiveLayout(
      /// Mobile View
      mobileBody: SafeArea(
        child: Scaffold(
          key: _key,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: CustomTextWidget(
              value: "My CV",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100.0)),
                      border: Border.all(
                        color: Colors.black54,
                        width: 5.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        "assets/image/aman1.JPG",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8.0),
                          child: CustomTextWidget(
                            value: "Projects",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(link: "https://github.com/AmanMobDev");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "GitHub",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Clipboard.setData(const ClipboardData(
                                    text: "aman232mishra@gmail.com"))
                                .then(
                              (value) {
                                var snackBar = SnackBar(
                                  content: const Text(
                                    "Email copied successfully.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 10.0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.grey,
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );

                            //_lunchEmail();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "Email",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Clipboard.setData(
                              const ClipboardData(
                                text: "+918543883298",
                              ),
                            ).then(
                              (value) {
                                var snackBar = SnackBar(
                                  content: const Text(
                                    "Mobile number copied successfully.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 10.0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.grey,
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "Phone",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          downloadFile(
                              "assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Colors.black,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(200.0),
                            ),
                          ),
                          child: CustomTextWidget(
                            value: "Download CV ",
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                              link: "https://www.linkedin.com/in/mishra36152/");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Colors.black,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: CustomTextWidget(
                            value: "Let's connect",
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
          body: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(
                  height: 20.0,
                ),

                /// Name & Titile
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextWidget(
                        value: "Aman Mishra",
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                      CustomTextWidget(
                        value: "Technical Lead",
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                /// About Me
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextWidget(
                        value: "ABOUT ME",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: CustomTextWidget(
                          value:
                              "Motivated Flutter Developer and Team Lead with over 5 years of experience in leading cross-functional teams, building high-quality mobile applications, and delivering projects on time. Adept at driving operational improvements, resolving complex issues, and optimizing workflows. Proven ability to manage large-scale projects, enhance customer satisfaction, and consistently exceed quality and performance benchmarks. Expertise in Flutter, Dart, and mobile app development, with a track record of successful project delivery.",
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),

                /// Icons
                SizedBox(
                  height: 100, // Adjust height as needed
                  child: CarouselSlider.builder(
                    itemCount: (imageList.length / 4)
                        .ceil(), // Correct item count calculation
                    itemBuilder: (context, index, realIndex) {
                      final startIndex = index * 4;
                      final endIndex = startIndex + 4;
                      //Handle cases where there are fewer than 3 images remaining
                      final imagesToDisplay = imageList.sublist(
                          startIndex, endIndex.clamp(0, imageList.length));

                      return Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceAround, // Distribute images evenly
                        children: imagesToDisplay.map((imagePath) {
                          return SizedBox(
                            width: 50.0, // Adjust width as needed
                            height: 50.0, // Adjust height as needed
                            child: SvgPicture.asset(
                              imagePath,
                            ),
                          );
                        }).toList(),
                      );
                    },
                    options: CarouselOptions(
                      padEnds: false, // Adjust as needed
                      viewportFraction: 1.0, // Each item takes full width
                      autoPlay: true,
                      enlargeCenterPage: false, // Adjust as needed
                      autoPlayCurve: Curves.linear,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextWidget(
                        value: "EXPERIENCE",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      /// First
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value: "Software Engineer",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value: "Chetu India Pvt Ltd",
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value: "07/2021 - Present, Noida",
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Developed and maintained cross-platform mobile apps using Flutter for Android, iOS, and Web.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Implemented BLoC and MVVM architectures to separate business logic from UI, improving app scalability and maintainability.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Integrated Firebase for authentication, real-time database, and push notifications.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      /// Second
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Android || Flutter Developer",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Eglogics Softech IT Pvt Ltd",
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "03/2020 - 05/2021, Kanpur,UP",
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Developed an offline QR code scanning app for warehouse management.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Created a comprehensive employee management app to track projects, working hours, and more.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Built multi-platform apps for Android, iOS, and Web.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),

                      /// Third
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Android Developer",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Czars India IT Pvt. Ltd",
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "07/2019 - 02/2020, Kanpur, UP",
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Developed an E-learning app with a coaching management system and integrated Razorpay for payments.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value:
                                    "\u2022 Successfully completed multiple apps, including E-learn and Gym Management.",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                /*Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 8.0,
                      ),
                      child: CustomTextWidget(
                        value: "EDUCATION",
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTextWidget(
                          value: "Master of Computer Applications",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "Jaipur National University",
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "08/2019 - 08/2022, Jaipur",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 8.0,
                      ),
                      child: CustomTextWidget(
                        value: "CERTIFICATION",
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTextWidget(
                          value:
                              "GNIIT in Cloud and Mobile Software Engineering",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "NIIT Technologies Limited",
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "Issued Oct 2019",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: CustomTextWidget(
                          value: "Flutter course - iOS Android Apps",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "LearnCodeOnline.in",
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextWidget(
                          value: "Issued Jan 2021",
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                   */ /* const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "ADDITIONAL INFORMATION",
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    strokeAlign: 2.0, style: BorderStyle.solid),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 10.0),
                                      child: CustomTextWidget(
                                        value: "LANGUAGES",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "English (Fluent)",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Hindi (Fluent)",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    strokeAlign: 2.0, style: BorderStyle.solid),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 10.0),
                                      child: CustomTextWidget(
                                        value: "SOFT SKILLS",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Teamwork",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Communication",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Problem-solving",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Agile",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Methodology",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 8.0),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.white,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Time Management",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),*/ /*
                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),

      /// DeskTop View
      desktopBody: SafeArea(
        child: Scaffold(
            body: Row(
          children: [
            Drawer(
              backgroundColor: Colors.white,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100.0)),
                        border: Border.all(
                          color: Colors.black54,
                          width: 5.0,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          image,
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "Projects",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL(link: "https://github.com/AmanMobDev");
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "GitHub",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              await Clipboard.setData(const ClipboardData(
                                      text: "aman232mishra@gmail.com"))
                                  .then(
                                (value) {
                                  var snackBar = SnackBar(
                                    content: const Text(
                                      "Email copied successfully.",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 10.0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.grey,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              );

                              //_lunchEmail();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "Email",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              await Clipboard.setData(
                                const ClipboardData(
                                  text: "+918543883298",
                                ),
                              ).then(
                                (value) {
                                  var snackBar = SnackBar(
                                    content: const Text(
                                      "Mobile number copied successfully.",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 10.0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.grey,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "Phone",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            downloadFile(
                                "assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(200.0),
                              ),
                            ),
                            child: CustomTextWidget(
                              value: "Download CV ",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                                link:
                                    "https://www.linkedin.com/in/mishra36152/");
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.black,
                                  style: BorderStyle.solid),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100.0),
                              ),
                            ),
                            child: CustomTextWidget(
                              value: "Let's connect",
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),

                    /// Name & Title
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextWidget(
                            value: "Aman Mishra",
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            color: Colors.white,
                          ),
                          CustomTextWidget(
                            value: "Technical Lead",
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    /// About Me
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomTextWidget(
                            value: "ABOUT ME",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: CustomTextWidget(
                              value:
                                  "Motivated Flutter Developer and Team Lead with over 5 years of experience in leading cross-functional teams, building high-quality mobile applications, and delivering projects on time. Adept at driving operational improvements, resolving complex issues, and optimizing workflows. Proven ability to manage large-scale projects, enhance customer satisfaction, and consistently exceed quality and performance benchmarks. Expertise in Flutter, Dart, and mobile app development, with a track record of successful project delivery.",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    /// Icons
                    SizedBox(
                      height: 100, // Adjust height as needed
                      child: CarouselSlider.builder(
                        itemCount: (imageList.length / 4)
                            .ceil(), // Correct item count calculation
                        itemBuilder: (context, index, realIndex) {
                          final startIndex = index * 4;
                          final endIndex = startIndex + 4;
                          //Handle cases where there are fewer than 3 images remaining
                          final imagesToDisplay = imageList.sublist(
                              startIndex, endIndex.clamp(0, imageList.length));

                          return Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround, // Distribute images evenly
                            children: imagesToDisplay.map((imagePath) {
                              return Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 50.0, // Adjust width as needed
                                  height: 50.0, // Adjust height as needed
                                  child: SvgPicture.asset(
                                    imagePath,
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },
                        options: CarouselOptions(
                          padEnds: false, // Adjust as needed
                          viewportFraction: 1.0, // Each item takes full width
                          autoPlay: true,
                          enlargeCenterPage: false, // Adjust as needed
                          autoPlayCurve: Curves.linear,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomTextWidget(
                            value: "EXPERIENCE",
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          /// First
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value: "Software Engineer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value: "Chetu India Pvt Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value: "07/2021 - Present, Noida",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed and maintained cross-platform mobile apps using Flutter for Android, iOS, and Web.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Implemented BLoC and MVVM architectures to separate business logic from UI, improving app scalability and maintainability.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Integrated Firebase for authentication, real-time database, and push notifications.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          /// Second
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Android || Flutter Developer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Eglogics Softech IT Pvt Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "03/2020 - 05/2021, Kanpur,UP",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed an offline QR code scanning app for warehouse management.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Created a comprehensive employee management app to track projects, working hours, and more.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Built multi-platform apps for Android, iOS, and Web.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          /// Third
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Android Developer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Czars India IT Pvt. Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "07/2019 - 02/2020, Kanpur, UP",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed an E-learning app with a coaching management system and integrated Razorpay for payments.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Successfully completed multiple apps, including E-learn and Gym Management.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    /*Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 8.0,
                        ),
                        child: CustomTextWidget(
                          value: "EDUCATION",
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: CustomTextWidget(
                            value: "Master of Computer Applications",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "Jaipur National University",
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "08/2019 - 08/2022, Jaipur",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 8.0,
                        ),
                        child: CustomTextWidget(
                          value: "CERTIFICATION",
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: CustomTextWidget(
                            value:
                                "GNIIT in Cloud and Mobile Software Engineering",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "NIIT Technologies Limited",
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "Issued Oct 2019",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: CustomTextWidget(
                            value: "Flutter course - iOS Android Apps",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "LearnCodeOnline.in",
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CustomTextWidget(
                            value: "Issued Jan 2021",
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                     */
                    /* const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "ADDITIONAL INFORMATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Card(
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      strokeAlign: 2.0, style: BorderStyle.solid),
                                ),
                                color: Colors.grey.withOpacity(0.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: CustomTextWidget(
                                          value: "LANGUAGES",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "English (Fluent)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Hindi (Fluent)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Card(
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      strokeAlign: 2.0, style: BorderStyle.solid),
                                ),
                                color: Colors.grey.withOpacity(0.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        child: CustomTextWidget(
                                          value: "SOFT SKILLS",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Teamwork",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Communication",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Problem-solving",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Agile",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Methodology",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0, vertical: 8.0),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white,
                                                  style: BorderStyle.solid),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(200.0),
                                              ),
                                            ),
                                            child: CustomTextWidget(
                                              value: "Time Management",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),*/
                    /*
                    ],
                  ),*/
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.black,
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 8.0,
                            ),
                            child: CustomTextWidget(
                              value: "EDUCATION",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value: "Master of Computer Applications",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Jaipur National University",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "08/2019 - 08/2022, Jaipur",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 8.0,
                            ),
                            child: CustomTextWidget(
                              value: "CERTIFICATION",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value:
                                    "GNIIT in Cloud and Mobile Software Engineering",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "NIIT Technologies Limited",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Issued Oct 2019",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value: "Flutter course - iOS Android Apps",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "LearnCodeOnline.in",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Issued Jan 2021",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "ADDITIONAL INFORMATION",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10.0),
                                  child: CustomTextWidget(
                                    value: "LANGUAGES",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "English (Fluent)",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Hindi (Fluent)",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10.0),
                                  child: CustomTextWidget(
                                    value: "SOFT SKILLS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Teamwork",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Communication",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Problem-solving",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Agile",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Methodology",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0, vertical: 8.0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(200.0),
                                        ),
                                      ),
                                      child: CustomTextWidget(
                                        value: "Time Management",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
            /*Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                margin: const EdgeInsets.fromLTRB(00.0, 120.0, 00.0, 00.0),
                padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 00.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "Aman Mishra",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 0.0),
                                child: CustomTextWidget(
                                  value: "Technical Lead",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 50.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "ABOUT ME",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                    "Motivated Flutter Developer and Team Lead with over 5 years of experience in leading cross-functional teams, building high-quality mobile applications, and delivering projects on time. Adept at driving operational improvements, resolving complex issues, and optimizing workflows. Proven ability to manage large-scale projects, enhance customer satisfaction, and consistently exceed quality and performance benchmarks. Expertise in Flutter, Dart, and mobile app development, with a track record of successful project delivery.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 400,
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 250.0, bottom: 0.0),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(200.0)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 10.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200.0),
                            child: Image.asset(
                              "assets/image/aman1.JPG",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 10.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SvgPicture.asset(
                            "assets/image/dart.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/java.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                          SvgPicture.asset(
                            "assets/image/kotlin.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                          SvgPicture.asset(
                            "assets/image/swift.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                          SvgPicture.asset(
                            "assets/image/flutter.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/ios.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                          SvgPicture.asset(
                            "assets/image/android.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                          SvgPicture.asset(
                            "assets/image/firebase.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/git.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/github.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/jira.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/bitbucket.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/xcode.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/vscode.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/figma.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/adobexd.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/api.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/localDB.svg",
                            width: 50.0,
                            height: 50.0,
                          ),
                          SvgPicture.asset(
                            "assets/image/cicd.svg",
                            width: 50.0,
                            height: 50.0,
                            semanticsLabel: "CI/CD",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "EXPERIENCE",
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            /// First
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Software Engineer",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Chetu India Pvt Ltd",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "07/2021 - Present, Noida",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Developed and maintained cross-platform mobile apps using Flutter for Android, iOS, and Web.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Implemented BLoC and MVVM architectures to separate business logic from UI, improving app scalability and maintainability.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Integrated Firebase for authentication, real-time database, and push notifications.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),

                            /// Second
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Android || Flutter Developer",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Eglogics Softech IT Pvt Ltd",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "03/2020 - 05/2021, Kanpur,UP",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Developed an offline QR code scanning app for warehouse management.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Created a comprehensive employee management app to track projects, working hours, and more.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Built multi-platform apps for Android, iOS, and Web.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),

                            /// Third
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Android Developer",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "Czars India IT Pvt. Ltd",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value: "07/2019 - 02/2020, Kanpur, UP",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Developed an E-learning app with a coaching management system and integrated Razorpay for payments.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22.0, vertical: 8.0),
                                  child: SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: CustomTextWidget(
                                      value:
                                      "\u2022 Successfully completed multiple apps, including E-learn and Gym Management.",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 8.0,
                              ),
                              child: CustomTextWidget(
                                value: "EDUCATION",
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: CustomTextWidget(
                                  value: "Master of Computer Applications",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "Jaipur National University",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "08/2019 - 08/2022, Jaipur",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 8.0,
                              ),
                              child: CustomTextWidget(
                                value: "CERTIFICATION",
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: CustomTextWidget(
                                  value:
                                  "GNIIT in Cloud and Mobile Software Engineering",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "NIIT Technologies Limited",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "Issued Oct 2019",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: CustomTextWidget(
                                  value: "Flutter course - iOS Android Apps",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "LearnCodeOnline.in",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: CustomTextWidget(
                                  value: "Issued Jan 2021",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      child: CustomTextWidget(
                                        value: "ADDITIONAL INFORMATION",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Card(
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            strokeAlign: 2.0,
                                            style: BorderStyle.solid),
                                      ),
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 10.0),
                                              child: CustomTextWidget(
                                                value: "LANGUAGES",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "English (Fluent)",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Hindi (Fluent)",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Card(
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            strokeAlign: 2.0,
                                            style: BorderStyle.solid),
                                      ),
                                      color: Colors.grey.withOpacity(0.2),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 10.0),
                                              child: CustomTextWidget(
                                                value: "SOFT SKILLS",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Teamwork",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Communication",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Problem-solving",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Agile",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Methodology",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                  const EdgeInsets.all(8.0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 8.0),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white,
                                                        style:
                                                        BorderStyle.solid),
                                                    borderRadius:
                                                    const BorderRadius.all(
                                                      Radius.circular(200.0),
                                                    ),
                                                  ),
                                                  child: CustomTextWidget(
                                                    value: "Time Management",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "PROJECTS",
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Wrap(
                              //direction: Axis.vertical,
                              children: [
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.3,
                                  height:
                                  MediaQuery.of(context).size.height * 0.3,
                                  child: Card(
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          strokeAlign: 2.0,
                                          style: BorderStyle.solid),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: CustomTextWidget(
                                              value:
                                              "WhatApp UI clone (08/2020 - 10/2020)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Chip(
                                            backgroundColor: Colors.black54,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 5.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(20.0),
                                            ),
                                            label: const Text(
                                              "UI",
                                              style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.4,
                                              child: CustomTextWidget(
                                                value:
                                                "Developed a clone of the WhatsApp user interface as an academic project, focusing on key features such as the home page, status page, and messaging functionality. The project aimed to replicate the design and user experience of WhatsApp, including features like message sending, status updates, and seamless navigation between different pages. The UI was designed to be responsive, intuitive, and visually similar to the original app, providing a hands-on experience with mobile app development and UI design principles.",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.3,
                                  height:
                                  MediaQuery.of(context).size.height * 0.3,
                                  child: Card(
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          strokeAlign: 2.0,
                                          style: BorderStyle.solid),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: CustomTextWidget(
                                              value:
                                              "GitX MVVM Architecture (06/2021 - 08/2021)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.4,
                                              child: CustomTextWidget(
                                                value:
                                                "Implemented the MVVM (Model-View-ViewModel) architecture in an academic project to separate UI from business logic. MVVM organizes code into three layers: \n\n●  Model: Manages data and business logic \n●  View: Displays UI and binds to the ViewModel \n● ViewModel: Handles data transformation and provides data to the view \n\nThis design improves app maintainability, scalability, and testability, while promoting clean code and better separation of concerns.",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.3,
                                  height:
                                  MediaQuery.of(context).size.height * 0.3,
                                  child: Card(
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          strokeAlign: 2.0,
                                          style: BorderStyle.solid),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: CustomTextWidget(
                                              value:
                                              "Flutter bloc pattern (08/2021 - 10/2021)",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.4,
                                              child: CustomTextWidget(
                                                value:
                                                "Implemented the BLoC (Business Logic Component) pattern to manage state in applications. BLoC separates the UI from business logic, making the app easier to maintain, test, and scale.",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),*/
            /* Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                semanticContainer: true,
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                color: Colors.white,
                elevation: 8.0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                          left: 40.0,
                          right: 10.0,
                          top: 8.0,
                        ),
                        child: SvgPicture.asset(
                          "assets/image/code.svg",
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          downloadFile(
                              "assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.black,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(200.0),
                            ),
                          ),
                          child: CustomTextWidget(
                            value: "Download CV ",
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: CustomTextWidget(
                                value: "Projects",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    link: "https://github.com/AmanMobDev");
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "GitHub",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await Clipboard.setData(const ClipboardData(
                                    text: "aman232mishra@gmail.com"))
                                    .then(
                                      (value) {
                                    var snackBar = SnackBar(
                                      content: const Text(
                                        "Email copied successfully.",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: BeveledRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      ),
                                      elevation: 10.0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.grey,
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                );

                                //_lunchEmail();
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "Email",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await Clipboard.setData(const ClipboardData(
                                    text: "+918543883298"))
                                    .then(
                                      (value) {
                                    var snackBar = SnackBar(
                                      content: const Text(
                                        "Mobile number copied successfully.",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: BeveledRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      ),
                                      elevation: 10.0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.grey,
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: CustomTextWidget(
                                  value: "+91 85 43 88 32 98",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  _launchURL(
                                      link:
                                      "https://www.linkedin.com/in/mishra36152/");
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                        style: BorderStyle.solid),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                  child: CustomTextWidget(
                                    value: "Let's connect",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Colors.black,
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
              ),*/
          ],
        )),
      ),
    );

    /*Scaffold(
      backgroundColor: black,
      body: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: black,
            margin: const EdgeInsets.fromLTRB(00.0, 140.0, 00.0, 00.0),
            padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 00.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "Aman Mishra",
                              fontWeight: FontWeight.bold,
                              fontSize: 60.0,
                              color: white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 0.0),
                            child: CustomTextWidget(
                              value: "Technical Lead",
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "ABOUT ME",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: CustomTextWidget(
                                value:
                                    "Motivated Flutter Developer and Team Lead with over 5 years of experience in leading cross-functional teams, building high-quality mobile applications, and delivering projects on time. Adept at driving operational improvements, resolving complex issues, and optimizing workflows. Proven ability to manage large-scale projects, enhance customer satisfaction, and consistently exceed quality and performance benchmarks. Expertise in Flutter, Dart, and mobile app development, with a track record of successful project delivery.",
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                                color: white,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: 500.0,
                        width: 500.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          ),
                          border: Border.all(
                            color: black.withOpacity(0.5),
                            width: 10.0,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          ),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                            width: 200.0,
                            height: 200.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10.0,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icon.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(
                          icon[index],
                          width: 50.0,
                          height: 50.0,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "EXPERIENCE",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          /// First
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Software Engineer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Chetu India Pvt Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "07/2021 - Present, Noida",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed and maintained cross-platform mobile apps using Flutter for Android, iOS, and Web.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Implemented BLoC and MVVM architectures to separate business logic from UI, improving app scalability and maintainability.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Integrated Firebase for authentication, real-time database, and push notifications.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          /// Second
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Android || Flutter Developer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Eglogics Softech IT Pvt Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "03/2020 - 05/2021, Kanpur,UP",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed an offline QR code scanning app for warehouse management.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Created a comprehensive employee management app to track projects, working hours, and more.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Built multi-platform apps for Android, iOS, and Web.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          /// Third
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Android Developer",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "Czars India IT Pvt. Ltd",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value: "07/2019 - 02/2020, Kanpur, UP",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Developed an E-learning app with a coaching management system and integrated Razorpay for payments.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: CustomTextWidget(
                                    value:
                                        "\u2022 Successfully completed multiple apps, including E-learn and Gym Management.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: white,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 8.0,
                            ),
                            child: CustomTextWidget(
                              value: "EDUCATION",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value: "Master of Computer Applications",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Jaipur National University",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "08/2019 - 08/2022, Jaipur",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 8.0,
                            ),
                            child: CustomTextWidget(
                              value: "CERTIFICATION",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value:
                                    "GNIIT in Cloud and Mobile Software Engineering",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "NIIT Technologies Limited",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Issued Oct 2019",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: CustomTextWidget(
                                value: "Flutter course - iOS Android Apps",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "LearnCodeOnline.in",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: CustomTextWidget(
                                value: "Issued Jan 2021",
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                color: white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 8.0),
                                    child: CustomTextWidget(
                                      value: "ADDITIONAL INFORMATION",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                      color: white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Card(
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          strokeAlign: 2.0,
                                          style: BorderStyle.solid),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 10.0),
                                            child: CustomTextWidget(
                                              value: "LANGUAGES",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "English (Fluent)",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Hindi (Fluent)",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Card(
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                        strokeAlign: 2.0,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    color: Colors.grey.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 10.0,
                                            ),
                                            child: CustomTextWidget(
                                              value: "SOFT SKILLS",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: white,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 8.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: white,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Teamwork",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: white,
                                                    style: BorderStyle.solid,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Communication",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Problem-solving",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Agile",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Methodology",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0,
                                                        vertical: 8.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: white,
                                                      style: BorderStyle.solid),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                    Radius.circular(200.0),
                                                  ),
                                                ),
                                                child: CustomTextWidget(
                                                  value: "Time Management",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.0,
                                                  color: white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "PROJECTS",
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: white,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    strokeAlign: 2.0, style: BorderStyle.solid),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: CustomTextWidget(
                                          value:
                                              "WhatApp UI clone (08/2020 - 10/2020)",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Chip(
                                        backgroundColor: black.withOpacity(0.5),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 5.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        label: Text(
                                          "UI",
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: CustomTextWidget(
                                            value:
                                                "Developed a clone of the WhatsApp user interface as an academic project, focusing on key features such as the home page, status page, and messaging functionality. The project aimed to replicate the design and user experience of WhatsApp, including features like message sending, status updates, and seamless navigation between different pages. The UI was designed to be responsive, intuitive, and visually similar to the original app, providing a hands-on experience with mobile app development and UI design principles.",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0,
                                            color: white,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    strokeAlign: 2.0, style: BorderStyle.solid),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: CustomTextWidget(
                                          value:
                                              "GitX MVVM Architecture (06/2021 - 08/2021)",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: CustomTextWidget(
                                            value:
                                                "Implemented the MVVM (Model-View-ViewModel) architecture in an academic project to separate UI from business logic. MVVM organizes code into three layers: \n\n●  Model: Manages data and business logic \n●  View: Displays UI and binds to the ViewModel \n● ViewModel: Handles data transformation and provides data to the view \n\nThis design improves app maintainability, scalability, and testability, while promoting clean code and better separation of concerns.",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0,
                                            color: white,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    strokeAlign: 2.0, style: BorderStyle.solid),
                              ),
                              color: Colors.grey.withOpacity(0.2),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: CustomTextWidget(
                                          value:
                                              "Flutter bloc pattern (08/2021 - 10/2021)",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: CustomTextWidget(
                                            value:
                                                "Implemented the BLoC (Business Logic Component) pattern to manage state in applications. BLoC separates the UI from business logic, making the app easier to maintain, test, and scale.",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0,
                                            color: white,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            margin: EdgeInsets.zero,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            color: white,
            elevation: 8.0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      left: 40.0,
                      right: 10.0,
                      top: 8.0,
                    ),
                    child: SvgPicture.asset(
                      "assets/image/code.svg",
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      downloadFile(
                          "assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: black, style: BorderStyle.solid),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(200.0),
                        ),
                      ),
                      child: CustomTextWidget(
                        value: "Download CV",
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8.0),
                          child: CustomTextWidget(
                            value: "Projects",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(link: "https://github.com/AmanMobDev");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "GitHub",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Clipboard.setData(
                              const ClipboardData(
                                text: "aman232mishra@gmail.com",
                              ),
                            ).then(
                              (value) {
                                var snackBar = SnackBar(
                                  content: Text(
                                    "Email copied successfully.",
                                    style: TextStyle(
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 10.0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.grey,
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );

                            //_lunchEmail();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "Email",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Clipboard.setData(
                                    const ClipboardData(text: "+918543883298"))
                                .then(
                              (value) {
                                var snackBar = SnackBar(
                                  content: Text(
                                    "Mobile number copied successfully.",
                                    style: TextStyle(
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 10.0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.grey,
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: CustomTextWidget(
                              value: "+91 85 43 88 32 98",
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL(
                                  link:
                                      "https://www.linkedin.com/in/mishra36152/");
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: black,
                                    style: BorderStyle.solid),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                              ),
                              child: CustomTextWidget(
                                value: "Let's connect",
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: black,
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
          ),
        ],
      ),
    );*/
  }

  _launchURL({required String link}) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = "AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf";
    anchorElement.click();
  }
}
