import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/core/injection/firestore_injection.dart';
import 'package:s_rocks_assignment_project/home/models/data%20source/home_data_source.dart';

final homeServicesDataSourceProvider = Provider<HomeServicesDataSource>((ref) {
  final dataSource = ref.read(firestoreProvider);

  return HomeServicesDataSource(firebaseFirestore: dataSource);
});
