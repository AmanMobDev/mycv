import 'dart:html' as html;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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

  List experienceDescription = [
    "\u2022 Developed and maintained cross-platform mobile apps using Flutter for Android, iOS, and Web.",
    "\u2022 Implemented BLoC and MVVM architectures to separate business logic from UI, improving app scalability and maintainability.",
    "\u2022 Integrated Firebase for authentication, real-time database, and push notifications.",
    "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
    "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
  ];

  List experienceDescription2 = [
    "\u2022 Developed an offline QR code scanning app for warehouse management.",
    "\u2022 Created a comprehensive employee management app to track projects, working hours, and more.",
    "\u2022 Built multi-platform apps for Android, iOS, and Web.",
    "\u2022 Worked with teams to develop RESTful APIs and integrated them into the app for data synchronization.",
    "\u2022 Collaborated with UX/UI designers to implement modern, responsive app designs.",
  ];
  List experienceDescription3 = [
    "\u2022 Developed an E-learning app with a coaching management system and integrated Razorpay for payments.",
    "\u2022 Successfully completed multiple apps, including E-learn and Gym Management.",
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
              value: "Resume",
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
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _launchURL(link: "https://github.com/AmanMobDev");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            child: ListTile(
                              leading: SvgPicture.asset(github1),
                              title: CustomTextWidget(
                                value: "GitHub",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
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
                            child: ListTile(
                              leading: SvgPicture.asset(email),
                              title: CustomTextWidget(
                                value: "Email",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              autofocus: true,
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
                            child: ListTile(
                              leading: SvgPicture.asset(phone),
                              title: CustomTextWidget(
                                value: "Phone",
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                              autofocus: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  AnimationLimiter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(seconds: 1),
                        childAnimationBuilder: (widget) => SlideAnimation(
                          horizontalOffset: 50.0,
                          child: FadeInAnimation(
                            child: widget,
                          ),
                        ),
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
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextWidget(
                                    value: "Download CV",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  SvgPicture.asset(
                                    download,
                                    width: 24.0,
                                    height: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  link:
                                      "https://www.linkedin.com/in/mishra36152/");
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
                                  Radius.circular(10.0),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextWidget(
                                    value: "Let's Connect",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  SvgPicture.asset(
                                    link,
                                    width: 24.0,
                                    height: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
            child: Container(
              color: Colors.black,
              child: AnimationLimiter(
                child: SingleChildScrollView(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(seconds: 1),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),

                        /// Name & Title
                        Column(
                          children: [
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
                                    value: "Software Engineer",
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
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
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
                              height: 100,
                              width: MediaQuery.sizeOf(context).width,
                              child: CarouselSlider.builder(
                                itemCount: (imageList.length / 4)
                                    .ceil(), // Correct item count calculation
                                itemBuilder: (context, index, realIndex) {
                                  final startIndex = index * 4;
                                  final endIndex = startIndex + 4;
                                  //Handle cases where there are fewer than 3 images remaining
                                  final imagesToDisplay = imageList.sublist(
                                      startIndex,
                                      endIndex.clamp(0, imageList.length));

                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceAround, // Distribute images evenly
                                    children: imagesToDisplay.map((imagePath) {
                                      return SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SvgPicture.asset(
                                          imagePath,
                                        ),
                                      );
                                    }).toList(),
                                  );
                                },
                                options: CarouselOptions(
                                  padEnds: false, // Adjust as needed
                                  viewportFraction:
                                      1.0, // Each item takes full width
                                  autoPlay: true,
                                  enlargeCenterPage: false, // Adjust as needed
                                  autoPlayCurve: Curves.linear,
                                ),
                              ),
                            ),

                            /// Skills
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomTextWidget(
                                    value: "SKILLS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Programming Languages: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Dart, Java, Kotlin",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Mobile App Development: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Flutter, Android SDK",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "UI/UX Design:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Material Design, Cupertino Design, Adobe XD, Figma",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Version Control: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Git, Github, Bitbucket",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Database: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "SQLite, Firebase, App Write",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "API Integration: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "RESTful APIs, JSON",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Tools: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Android Studio, Visual Studio Code, Git, JIRA, Postman, Xcode",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Testing: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Unit Testing, Widget Testing, Integration Testing",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),

                                    /*CustomTextWidget(
                                  value:
                                      "Programming Languages: Dart, Java, Kotlin\nMobile App Development: Flutter, Android SDK\nUI/UX Design: Material Design, Cupertino Design,  Adobe XD, Figma\nVersion Control: Git, Github,  Bitbucket\nDatabase: SQLite, Firebase,  App Write\nAPI Integration: RESTful APIs, JSON, XML\nTools: Android Studio, Visual Studio Code, Git, JIRA,  Postman, Xcode\nTesting: Unit Testing, Widget Testing, Integration Testing.",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  textAlign: TextAlign.justify,
                                ),*/
                                  ),
                                ],
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
                                      ///title
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value: "Software Engineer",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///company name
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value: "Chetu India Pvt Ltd",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///time
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value: "07/2021 - Present, Noida",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///description
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount:
                                                experienceDescription.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  child: CustomTextWidget(
                                                    value:
                                                        experienceDescription[
                                                            index],
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),

                                  /// Second

                                  Column(
                                    children: [
                                      ///title
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value:
                                                "Android || Flutter Developer",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///company name
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value:
                                                "Eglogics Softech IT Pvt Ltd",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///time
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value:
                                                "03/2020 - 05/2021, Kanpur,UP",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///description
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        child: ListView.builder(
                                            itemCount:
                                                experienceDescription2.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  child: CustomTextWidget(
                                                    value:
                                                        experienceDescription2[
                                                            index],
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(
                                    height: 20.0,
                                  ),

                                  /// Third
                                  Column(
                                    children: [
                                      ///title
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value:
                                                "Android Developer || UI Designer",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///company name
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value: "Czars India IT Pvt. Ltd",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///time
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: CustomTextWidget(
                                            value:
                                                "07/2019 - 02/2020, Kanpur, UP",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      ///description
                                      SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        child: ListView.builder(
                                            itemCount:
                                                experienceDescription3.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  child: CustomTextWidget(
                                                    value:
                                                        experienceDescription3[
                                                            index],
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 8.0,
                                  ),
                                  child: CustomTextWidget(
                                    value: "EDUCATION",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "Master of Computer Applications",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Jaipur National University",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "08/2019 - 08/2022, Jaipur",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
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
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "GNIIT in Cloud and Mobile Software Engineering",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "NIIT Technologies Limited",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Issued Oct 2019",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value:
                                              "Flutter course - iOS Android Apps",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "LearnCodeOnline.in",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomTextWidget(
                                          value: "Issued Jan 2021",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                          color: Colors.white,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 8.0,
                                  ),
                                  child: CustomTextWidget(
                                    value: "ADDITIONAL INFORMATION",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0,
                                          vertical: 10.0,
                                        ),
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
                                                horizontal: 10.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
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
                                          color: Colors.white,
                                        ),
                                      ),
                                      Wrap(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
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
                                              fontSize: 13.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(8.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0,
                                                vertical: 8.0),
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
                                              fontSize: 12.0,
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
                      ],
                    ),
                  ),
                ),
              ),
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
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _launchURL(
                                    link: "https://github.com/AmanMobDev");
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: ListTile(
                                  leading: SvgPicture.asset(github1),
                                  title: CustomTextWidget(
                                    value: "GitHub",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
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
                                child: ListTile(
                                  leading: SvgPicture.asset(email),
                                  title: CustomTextWidget(
                                    value: "Email",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
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
                                child: ListTile(
                                  leading: SvgPicture.asset(phone),
                                  title: CustomTextWidget(
                                    value: "Phone",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AnimationLimiter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(seconds: 1),
                            childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(
                                child: widget,
                              ),
                            ),
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
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomTextWidget(
                                        value: "Download CV",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      SvgPicture.asset(
                                        download,
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchURL(
                                      link:
                                          "https://www.linkedin.com/in/mishra36152/");
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
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomTextWidget(
                                        value: "Let's Connect",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      SvgPicture.asset(
                                        link,
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                  child: SingleChildScrollView(
                    child: AnimationLimiter(
                      child: Column(
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(seconds: 1),
                          childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(
                              child: widget,
                            ),
                          ),
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),

                            /// Name & Title
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomTextWidget(
                                        value: "Aman Mishra",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      CustomTextWidget(
                                        value: "Software Engineer",
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
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
                                  height: 100,
                                  width: screenWidth,
                                  child: CarouselSlider.builder(
                                    itemCount: (imageList.length / 4)
                                        .ceil(), // Correct item count calculation
                                    itemBuilder: (context, index, realIndex) {
                                      final startIndex = index * 4;
                                      final endIndex = startIndex + 4;
                                      //Handle cases where there are fewer than 3 images remaining
                                      final imagesToDisplay = imageList.sublist(
                                          startIndex,
                                          endIndex.clamp(0, imageList.length));

                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceAround, // Distribute images evenly
                                        children:
                                            imagesToDisplay.map((imagePath) {
                                          return Expanded(
                                            flex: 1,
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
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
                                      viewportFraction:
                                          1.0, // Each item takes full width
                                      autoPlay: true,
                                      enlargeCenterPage:
                                          false, // Adjust as needed
                                      autoPlayCurve: Curves.linear,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            /// Skills
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomTextWidget(
                                    value: "SKILLS",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Programming Languages: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Dart, Java, Kotlin",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Mobile App Development: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Flutter, Android SDK",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "UI/UX Design:",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Material Design, Cupertino Design, Adobe XD, Figma",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Version Control: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "Git, Github, Bitbucket",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Database: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "SQLite, Firebase, App Write",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "API Integration: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value: "RESTful APIs, JSON",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Tools: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Android Studio, Visual Studio Code, Git, JIRA, Postman, Xcode",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Wrap(
                                          children: [
                                            CustomTextWidget(
                                              value: "Testing: ",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CustomTextWidget(
                                              value:
                                                  "Unit Testing, Widget Testing, Integration Testing",
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),

                                    /*CustomTextWidget(
                                    value:
                                        "Programming Languages: Dart, Java, Kotlin\nMobile App Development: Flutter, Android SDK\nUI/UX Design: Material Design, Cupertino Design,  Adobe XD, Figma\nVersion Control: Git, Github,  Bitbucket\nDatabase: SQLite, Firebase,  App Write\nAPI Integration: RESTful APIs, JSON, XML\nTools: Android Studio, Visual Studio Code, Git, JIRA,  Postman, Xcode\nTesting: Unit Testing, Widget Testing, Integration Testing.",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    textAlign: TextAlign.justify,
                                  ),*/
                                  ),
                                ],
                              ),
                            ),

                            ///Experience
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Software Engineer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value: "Chetu India Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2021 - Present, Noida",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.2,
                                            child: ListView.builder(
                                                itemCount: experienceDescription
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.9,
                                                      child: CustomTextWidget(
                                                        value:
                                                            experienceDescription[
                                                                index],
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),

                                      /// Second

                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Android || Flutter Developer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Eglogics Softech IT Pvt Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "03/2020 - 05/2021, Kanpur,UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.2,
                                            child: ListView.builder(
                                                itemCount:
                                                    experienceDescription2
                                                        .length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.9,
                                                      child: CustomTextWidget(
                                                        value:
                                                            experienceDescription2[
                                                                index],
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),

                                      const SizedBox(
                                        height: 20.0,
                                      ),

                                      /// Third
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///title
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Android Developer || UI Designer",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///company name
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "Czars India IT Pvt. Ltd",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///time
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              child: CustomTextWidget(
                                                value:
                                                    "07/2019 - 02/2020, Kanpur, UP",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),

                                          ///description
                                          SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.2,
                                            child: ListView.builder(
                                                itemCount:
                                                    experienceDescription3
                                                        .length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 22.0,
                                                        vertical: 8.0),
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.9,
                                                      child: CustomTextWidget(
                                                        value:
                                                            experienceDescription3[
                                                                index],
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  );
                                                }),
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
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  child: AnimationLimiter(
                    child: ListView(
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(seconds: 1),
                        childAnimationBuilder: (widget) => SlideAnimation(
                          horizontalOffset: 50.0,
                          child: FadeInAnimation(
                            child: widget,
                          ),
                        ),
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8.0,
                                ),
                                child: CustomTextWidget(
                                  value: "EDUCATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "Master of Computer Applications",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Jaipur National University",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "08/2019 - 08/2022, Jaipur",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
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
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "GNIIT in Cloud and Mobile Software Engineering",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "NIIT Technologies Limited",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Issued Oct 2019",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value:
                                            "Flutter course - iOS Android Apps",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "LearnCodeOnline.in",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: CustomTextWidget(
                                        value: "Issued Jan 2021",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.white,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 8.0,
                                ),
                                child: CustomTextWidget(
                                  value: "ADDITIONAL INFORMATION",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
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
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 10.0,
                                      ),
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
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "English (Fluent)",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
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
                                            fontSize: 12.0,
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
                                  mainAxisSize: MainAxisSize.max,
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
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(200.0),
                                            ),
                                          ),
                                          child: CustomTextWidget(
                                            value: "Teamwork",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
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
                                            fontSize: 12.0,
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
                                            fontSize: 12.0,
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
                                            fontSize: 12.0,
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
                                            fontSize: 12.0,
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
                                            fontSize: 12.0,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
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
