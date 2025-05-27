import 'package:s_rocks_assignment_project/home/models/data%20source/home_data_source.dart';
import 'package:s_rocks_assignment_project/home/models/data/service_model.dart';

class HomeServicesRepository {
  final HomeServicesDataSource homeServicesDataSource;

  HomeServicesRepository({required this.homeServicesDataSource});

  Future<List<ServiceModel>?> getHomerServices() async =>
      homeServicesDataSource.getHomeServices();
}
