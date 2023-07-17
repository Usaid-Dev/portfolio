import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant/constants.dart';
import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project projectData;
  const ProjectWidget({super.key, required this.projectData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenConstraint().width * 0.4,
      height: 200,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.build,
                    color: kGrey,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    projectData.name,
                    style: kSectionTitleText,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                projectData.description,
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  'images/Github.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Divider(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(projectData.link);
                    await launchUrl(url);
                  },
                  child: Text(
                    "View Project",
                    style: kSubTitleText.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
