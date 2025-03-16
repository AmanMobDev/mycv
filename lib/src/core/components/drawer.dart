/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:mycv/src/config/export/export.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      backgroundColor: AppColor.white,
      surfaceTintColor: AppColor.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              clipBehavior: Clip.antiAliasWithSaveLayer, // Image border
              child: SizedBox.fromSize(
                size: const Size.fromRadius(100.0), // Image radius
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.homeScreen,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            home,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.home,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.projectScreen,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            project,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.project,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.certificateScreen,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            certificate,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.certificates,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(link: "https://github.com/AmanMobDev");
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            github1,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.gitHub,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            services,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.services,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    /*GestureDetector(
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
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            email,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.email,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: AppColor.black,
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
                          horizontal: 10.0,
                        ),
                        child: ListTile(
                          leading: SvgPicture.asset(
                            phone,
                            width: 24.0,
                            height: 24.0,
                          ),
                          title: CustomTextWidget(
                            value: AppString.phone,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
          AnimationLimiter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
                            "assets/files/AMAN_MISHRA_SENIOR_FLUTTER_DEVELOPER_3+YEAR.pdf");
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
                              value: AppString.downloadCV,
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
                        launchURL(
                            link: "https://www.linkedin.com/in/mishra36152/");
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
                              value: AppString.letsConnect,
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
          ),
        ],
      ),
    );
  }
}
