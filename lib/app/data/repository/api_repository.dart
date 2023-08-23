import '../../core/constants/strings.dart';
import '../../modules/discovery/models/discovery_models.dart';
import '../network/network_api_services.dart';

class ApiRepository {
  final _apiService = NetworkApiServices();

  Future<DiscoveryModel> discoverList() async {
    dynamic response = await _apiService.getApi(AppUrl.explorerApi);
    return DiscoveryModel.fromJson(response);
  }
}
