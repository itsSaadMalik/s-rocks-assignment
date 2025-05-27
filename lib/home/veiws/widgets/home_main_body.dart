import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';
import 'package:s_rocks_assignment_project/home/providers/home_services_provider.dart';
import 'package:s_rocks_assignment_project/home/veiws/widgets/service_list_view.dart';

class HomeScreenMainBody extends ConsumerWidget {
  const HomeScreenMainBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final services = ref.watch(homeServicesProvider);
    return Container(
      decoration: BoxDecoration(color: AppColors.appDarkbackgorund),
      padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hire hand-picked Pros for popular music services',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          services.when(
            data: (data) => ServiceListView(isEnabled: false, services: data),
            error:
                (error, stackTrace) =>
                    Container(child: Text('something went wrong')),
            loading: () => ServiceListView(isEnabled: true),
          ),
        ],
      ),
    );
  }
}
