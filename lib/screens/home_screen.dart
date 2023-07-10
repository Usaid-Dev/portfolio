import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constant/constants.dart';
import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
              child: Text(
                "@$username",
                style: kSubTitleText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse(resumeLink);
                    await launchUrl(url);
                  },
                  child: Text(
                    "View Resume",
                    style: kSubTitleText,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: contactEmail,
                    );
                    await launchUrl(emailLaunchUri);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Contact",
                        style: kSubTitleText.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
