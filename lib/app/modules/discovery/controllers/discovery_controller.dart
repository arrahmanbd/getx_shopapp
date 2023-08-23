import 'package:get/get.dart';

import '../../../data/repository/api_repository.dart';
import '../../../data/response/status.dart';
import '../models/discovery_models.dart';

class DiscoveryController extends GetxController {
  final _api = ApiRepository();

  final rxRequestStatus = Status.loading.obs;
  final discoveryModel = DiscoveryModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status value) => rxRequestStatus.value = value;
  void setDiscoveryList(DiscoveryModel value) => discoveryModel.value = value;
  void setError(String value) => error.value = value;

  void explorerList() {
    _api.discoverList().then((value) {
      setRxRequestStatus(Status.success);
      setDiscoveryList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.error);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.loading);
    _api.discoverList().then((value) {
      setRxRequestStatus(Status.success);
      setDiscoveryList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.error);
    });
  }


  @override
  void onInit() {
    super.onInit();
    explorerList();
  }
}
