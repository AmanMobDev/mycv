import 'package:mycv/src/utils/exports/my_import.dart';

import '../../utils/components/project_card.dart';
import '../../utils/responsive/dimensions.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  Map<String, dynamic> dataProject = {
    "project_data": [
      {
        "title": "WhatApp UI clone",
        "duration": "(08/2020 - 10/2020)",
        "projectLink": "https://github.com/AmanMobDev/whatsapp_ui_clone",
        "imageLink":
            "https://static.vecteezy.com/system/resources/previews/004/141/669/non_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg",
        "description":
            "Developed a clone of the WhatsApp user interface as an academic project, focusing on key features such as the home page, status page, and messaging functionality. The project aimed to replicate the design and user experience of WhatsApp, including features like message sending, status updates, and seamless navigation between different pages. The UI was designed to be responsive, intuitive, and visually similar to the original app, providing a hands-on experience with mobile app development and UI design principles.",
      },
      {
        "title": "GitX MVVM Architecture",
        "duration": "(06/2021 - 08/2021)",
        "projectLink": "https://github.com/AmanMobDev/gitx_mvvm_architecture",
        "imageLink":
            "https://miro.medium.com/v2/resize:fit:813/1*j9-O4DcaYTBTlSjckaFqXA.png",
        "description":
            "Implemented the MVVM (Model-View-ViewModel) architecture in an academic project to separate UI from business logic. MVVM organizes code into three layers:\n● Model: Manages data and business logic\n● View: Displays UI and binds to the ViewModel\n● ViewModel: Handles data transformation and provides data to the view This design improves app maintainability, scalability, and testability, while promoting clean code and better separation of concerns.",
      },
      {
        "title": "Flutter bloc pattern",
        "duration": "(08/2021 - 10/2021)",
        "projectLink": "https://github.com/AmanMobDev/flutter_bloc",
        "imageLink":
            "https://static.vecteezy.com/system/resources/previews/004/141/669/non_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg",
        "description":
            "Implemented the BLoC (Business Logic Component) pattern to manage state in applications. BLoC separates the UI from business logic, making the app easier to maintain, test, and scale.",
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;

    return ResponsiveLayout(
      // Mobile View
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
          body: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: CustomTextWidget(
                    value: "PROJECTS",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    int crossAxisCount =
                        constraints.maxWidth > mobileWidth ? 2 : 1;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: dataProject['project_data'].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ProjectCard(
                            title: dataProject['project_data'][index]['title'],
                            description: dataProject['project_data'][index]
                                ['description'],
                            duration: dataProject['project_data'][index]
                                ['duration'],
                            projectLink: dataProject['project_data'][index]
                                ['projectLink'],
                            imageLink: dataProject['project_data'][index]
                                ['imageLink'],
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),

      // Desktop View
      desktopBody: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Row(
            children: [
              const CustomDrawer(),
              const SizedBox(width: 30.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    CustomTextWidget(
                      value: "ACADEMIC PROJECT",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: white,
                    ),
                    const SizedBox(height: 50.0),
                    Expanded(
                      child: LayoutBuilder(builder: (context, constraints) {
                        int crossAxisCount =
                            constraints.maxWidth > mobileWidth ? 2 : 1;
                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                          ),
                          itemCount: dataProject['project_data'].length,
                          itemBuilder: (BuildContext context, int index) {
                            return ProjectCard(
                              title: dataProject['project_data'][index]
                                  ['title'],
                              description: dataProject['project_data'][index]
                                  ['description'],
                              duration: dataProject['project_data'][index]
                                  ['duration'],
                              projectLink: dataProject['project_data'][index]
                                  ['projectLink'],
                              imageLink: dataProject['project_data'][index]
                                  ['imageLink'],
                            );
                          },
                        );
                      }),
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
