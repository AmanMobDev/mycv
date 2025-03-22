import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycv/src/config/export/export.dart';
import 'package:mycv/src/config/locator/service_locator.dart';
import 'package:mycv/src/features/service/presentation/bloc/service_bloc.dart';
import 'package:mycv/src/features/service/presentation/bloc/service_event.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  WidgetsBinding.instance.addPostFrameCallback((_) {});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServiceBloc>(
          create: (context) =>
              locator<ServiceBloc>()..add(GetAddServiceEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: (Platform.isAndroid && Platform.isIOS)
            ? RouteName.homeScreen
            : RouteName.serviceScreen,
        onGenerateRoute: Routes.generateRoutes,
      ),
    );
  }
}
