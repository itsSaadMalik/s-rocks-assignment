import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:s_rocks_assignment_project/home/models/data/service_model.dart';

class HomeServicesDataSource {
  final FirebaseFirestore firebaseFirestore;

  HomeServicesDataSource({required this.firebaseFirestore});
  Future<List<ServiceModel>?> getHomeServices() async {
    try {
      final data = await firebaseFirestore.collection('home_services').get();
      // serialize the fetched data
      final results =
          data.docs.map((e) => ServiceModel.fromFireStore(e.data())).toList();
      return results;
    } catch (e) {
      return null;
    }
  }
}
