import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/home/models/data/service_model.dart';
import 'package:s_rocks_assignment_project/home/providers/home_repo_provider.dart';

final homeServicesProvider = FutureProvider<List<ServiceModel>?>((ref) async {
  final homeScreenServices = ref.read(homeServiceRepoProvider);

  return homeScreenServices.getHomerServices();
});
