import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constant/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "PORTFOLIO",
          style: TextStyle(color: Colors.black),
        ),
      ),
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
            )),
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
                    )),
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
                        Icons.mail,
                        size: 16,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Mail Me",
                        style: kSubTitleText.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: context.screenConstraint().width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Email",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(email),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 40,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Location",
                                        style: kSubTitleText,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_pin,
                                            size: 16,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            location,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Email",
                                        style: kSubTitleText,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(email),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.launch,
                                            size: 16,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Connect With Me",
                            style: kTitleText,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(instagramLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Instagram",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(facebookLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Facebook",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(linkedinLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Linkedin",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(youtubeLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Youtube",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(twitterLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Twitter",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(githubLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Github",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(tiktokLink);
                            await launchUrl(url);
                          },
                          child: Text(
                            "Tiktok",
                            style: kSubTitleText.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Popular Repositories',
                style: kSectionTitleText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio:
                          context.screenConstraint().width > 1000 ? 3 : 1),
                  itemCount: projectList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectWidget(
                      projectData: projectList[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
