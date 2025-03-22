import 'package:mycv/src/config/export/export.dart';
import 'package:mycv/src/config/services/firebase/database_services.dart';
import 'package:mycv/src/features/service/data/data_source/service_data_source.dart';
import 'package:mycv/src/features/service/data/model/request/service_add_model.dart';

/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

class GetServiceDataSource implements ServiceDataSource {
  DataBaseCollectionServices dataBaseCollectionServices;

  GetServiceDataSource({required this.dataBaseCollectionServices});

  @override
  Future addService(AddServiceModel addServiceModel) async {
    Map<String, dynamic> data = addServiceModel.toMap();
    debugPrint("GetServiceDataSource: ${data.toString()}");

    dataBaseCollectionServices.addData('query', data).then((value) {
      Utils.toastMessages(message: "Query Added Successfully");
    }, onError: (error) {
      debugPrint("GetServiceDataSource onError: ${error.toString()}");
      Utils.toastMessages(message: error.toString());
    });
  }
}
