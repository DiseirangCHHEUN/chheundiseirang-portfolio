import 'package:flutter/material.dart';
// import 'package:pod_player/pod_player.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isWeb = width > 1100;
    return Expanded(
      child: isWeb
          ? GridView.builder(
              padding: EdgeInsets.all(isWeb ? 25 : 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) => ProjectCard(
                isWeb: isWeb,
                index: index,
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(isWeb ? 25 : 16),
              shrinkWrap: true,
              itemCount: projects.length,
              itemBuilder: (context, index) => ProjectCard(
                isWeb: isWeb,
                index: index,
              ),
            ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.isWeb,
    required this.index,
  });
  final int index;
  final bool isWeb;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    try {
      var vdoId = projects[widget.index].vdo!.substring(32);
      controller = YoutubePlayerController.fromVideoId(
        videoId: vdoId,
        params: const YoutubePlayerParams(
          showControls: true,
          mute: false,
          showFullscreenButton: true,
          loop: false,
        ),
        autoPlay: true,
      );
    } catch (e) {
      throw Exception(e);
    }
    super.initState();
  }

  // late PodPlayerController controller;
  // @override
  // void initState() {
  //   try {
  //     controller = PodPlayerController(
  //       playVideoFrom: PlayVideoFrom.youtube(projects[widget.index].vdo!),
  //       podPlayerConfig: const PodPlayerConfig(
  //         autoPlay: true,
  //         isLooping: false,
  //         // videoQualityPriority: [720, 360],
  //       ),
  //     )..initialise();
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  //   super.initState();
  // }
  @override
  void deactivate() {
    controller.stopVideo();
    initState();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            builder: (context) => Padding(
                  padding: EdgeInsets.all(widget.isWeb ? 50 : 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: YoutubePlayer(
                      controller: controller,
                      aspectRatio: 16 / 9,
                      enableFullScreenOnVerticalDrag: true,
                    ),
                    // child: PodVideoPlayer(
                    //   controller: controller,
                    // ),
                  ),
                ),
            // AlertDialog(
            //       contentPadding: const EdgeInsets.all(0),
            //       content: ClipRRect(
            //         borderRadius: BorderRadius.circular(10),
            //         child: PodVideoPlayer(
            //           controller: controller,
            //         ),
            //       ),
            //     ),
            context: context);
      },
      child: SizedBox(
        height: 170,
        child: Card(
          color: Colors.transparent.withOpacity(.1),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          contentPadding: const EdgeInsets.all(0),
                          content: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              projects[widget.index].image!,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      height: widget.isWeb ? 180 : 130,
                      width: widget.isWeb ? 100 : 70,
                      projects[widget.index].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () => launchUrl(
                          Uri.parse(projects[widget.index].vdo!),
                        ),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: const Color(0xFF0042BD),
                        ),
                        child: Text(
                          projects[widget.index].pName!,
                          style: TextStyle(
                            fontSize: widget.isWeb ? 24 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        projects[widget.index].pDescription!,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: widget.isWeb ? 16 : 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Start Date : ${projects[widget.index].pStartDate!}',
                        style: TextStyle(
                          fontSize: widget.isWeb ? 14 : 12,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'End Date : ${projects[widget.index].pEngDate!}',
                        style: TextStyle(
                          fontSize: widget.isWeb ? 14 : 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
