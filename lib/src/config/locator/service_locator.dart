import 'package:get_it/get_it.dart';
import 'package:mycv/src/features/service/presentation/bloc/service_bloc.dart';

import '../../features/service/data/data_source/service_data_source_imp.dart';
import '../../features/service/data/repository/service_data_repository.dart';
import '../../features/service/domain/usecase/service_use_case.dart';
import '../services/firebase/database_services.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Register AppServices
  locator.registerSingleton<DataBaseCollectionServices>(
    DataBaseCollectionServices(),
  );

  // Register JoinDataSource
  locator.registerSingleton<GetServiceDataSource>(
    GetServiceDataSource(
        dataBaseCollectionServices: locator<DataBaseCollectionServices>()),
  );

  // Register JoinRepository
  locator.registerSingleton<ServiceDataRepository>(
    ServiceDataRepository(serviceDataSource: locator<GetServiceDataSource>()),
  );

  // Register JoinDataUseCase
  locator.registerSingleton<GetServiceUseCase>(
    GetServiceUseCase(
        serviceDomainRepository: locator<ServiceDataRepository>()),
  );

  // Register JoinBloc
  locator.registerFactory<ServiceBloc>(
    () => ServiceBloc(getServiceUseCase: locator<GetServiceUseCase>()),
  );
}
