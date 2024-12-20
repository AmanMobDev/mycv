/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:mycv/src/view/certificate_screen/certificate_screen.dart';

import '../exports/my_import.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.all(Radius.circular(100.0)),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProjectScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(
                          project,
                          width: 24.0,
                          height: 24.0,
                        ),
                        title: CustomTextWidget(
                          value: "Project",
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CertificateScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(
                          certificate,
                          width: 24.0,
                          height: 24.0,
                        ),
                        title: CustomTextWidget(
                          value: "Certificate",
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
                          horizontal: 10.0, vertical: 8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(
                          github1,
                          width: 24.0,
                          height: 24.0,
                        ),
                        title: CustomTextWidget(
                          value: "GitHub",
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await Clipboard.setData(const ClipboardData(
                              text: "aman232mishra@gmail.com"))
                          .then(
                        (value) {
                          /*var snackBar = SnackBar(
                    content: const Text(
                      "Email copied successfully.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 10.0,
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.grey,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);*/
                        },
                      );

                      //_lunchEmail();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(
                          email,
                          width: 24.0,
                          height: 24.0,
                        ),
                        title: CustomTextWidget(
                          value: "Email",
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await Clipboard.setData(
                        const ClipboardData(
                          text: "+918543883298",
                        ),
                      ).then(
                        (value) {
                          /*var snackBar = SnackBar(
                    content: const Text(
                      "Mobile number copied successfully.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 10.0,
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.grey,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);*/
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(
                          phone,
                          width: 24.0,
                          height: 24.0,
                        ),
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
    );
  }
}
