import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/core/injection/home_data_src_provider.dart';
import 'package:s_rocks_assignment_project/home/models/repository/home_services.dart';

final homeServiceRepoProvider = Provider<HomeServicesRepository>((ref) {
  final dataSource = ref.read(homeServicesDataSourceProvider);
  return HomeServicesRepository(homeServicesDataSource: dataSource);
});
