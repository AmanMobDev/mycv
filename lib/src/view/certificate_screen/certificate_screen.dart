/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'package:mycv/src/utils/exports/my_import.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    return ResponsiveLayout(
      /// Mobile View
      mobileBody: SafeArea(
        child: Scaffold(
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
          drawer: const CustomDrawer(),
          body: SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Container(
              color: Colors.black,
              child: AnimationLimiter(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        CustomTextWidget(
                          value: "Certificates",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: white,
                        ),
                        const SizedBox(
                          height: 50.0,
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
          backgroundColor: Colors.black,
          body: Row(
            children: [
              const CustomDrawer(),
              const SizedBox(
                width: 30.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextWidget(
                      value: "Certificates",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: white,
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
