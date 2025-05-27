import 'package:flutter/material.dart';
import 'package:s_rocks_assignment_project/core/themes/app_colors.dart';
import 'package:s_rocks_assignment_project/home/models/data/service_model.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'dart:developer' as d;

class ServiceListView extends StatelessWidget {
  ServiceListView({super.key, required this.isEnabled, this.services});
  bool isEnabled = false;
  List<ServiceModel>? services;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isEnabled,
      child: ListView.builder(
        itemCount: services?.length ?? 4,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          final currentService = services?.elementAt(index);
          final preceedingImageUrl =
              currentService?.preceedingImageUrl.trim() ?? '';
          final bckgrndImageUrl =
              currentService?.backgroundImageUrl.trim() ?? '';
          final title = currentService?.title.trim() ?? '';
          return Container(
            padding: EdgeInsets.all(0),

            // height: 80,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 100, 100, 100),
                width: .2,
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(19, 14)),
              color: const Color.fromARGB(255, 70, 70, 70),
              image: DecorationImage(
                onError:
                    (exception, stackTrace) => Icon(Icons.cloud_off_outlined),
                fit: BoxFit.cover,

                image: NetworkImage(bckgrndImageUrl),
              ),
            ),
            child: Container(
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(19, 14)),
                color: const Color.fromARGB(255, 0, 0, 0),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 53, 53, 53).withValues(alpha: .8),
                    const Color.fromARGB(255, 46, 46, 46).withValues(alpha: .7),

                    const Color.fromARGB(255, 43, 42, 42).withValues(alpha: .8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              // color: const Color.fromARGB(255, 0, 0, 0).withValues(alpha: .7),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(15.5, 10),
                      ),
                      color: AppColors.appDarkbackgorund,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      preceedingImageUrl,
                      errorBuilder:
                          (context, error, stackTrace) =>
                              Container(child: Icon(Icons.cloud_off_outlined)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 0,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          currentService?.description ?? '',
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed:
                          () => Navigator.pushNamed(
                            context,
                            currentService!.route,
                            arguments: title,
                          ),
                      icon: Icon(Icons.arrow_right_rounded),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
