import 'package:flutter/material.dart';
import 'package:portfolio/models/certtification_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificationPage extends StatelessWidget {
  const CertificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // bool isMobile = width <= 500;
    // bool isTablet = width <= 1100;
    // bool isNotWeb = isMobile || isTablet;
    bool isWeb = width > 1100;
    double padding = 25;
    return Expanded(
      child: isWeb
          ? GridView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: padding, vertical: padding - 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 400,
              ),
              itemCount: certifications.length,
              itemBuilder: (context, index) => CertificationCard(
                index: index,
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: padding - 9, vertical: padding - 10),
              shrinkWrap: true,
              itemCount: certifications.length,
              itemBuilder: (context, index) => CertificationCard(
                index: index,
              ),
            ),
    );
  }
}

class CertificationCard extends StatelessWidget {
  const CertificationCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    launchInBrowser({required String sourceUrl}) async {
      final Uri url = Uri.parse(sourceUrl);
      if (await launchUrl(
        url,
        mode: LaunchMode.platformDefault,
      )) {
        throw Exception('Could not launch $url');
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            content: Stack(
              children: [
                GestureDetector(
                  onTap: () => launchInBrowser(
                      sourceUrl: certifications[index].sourceUrl!),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      certifications[index].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              certifications[index].title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child:
                  // FadeInImage.assetNetwork(
                  //   placeholder: 'assets/images/loading_image.gif',
                  //   image: certifications[index].image!,
                  //   fit: BoxFit.fill,
                  //   height: width * .63,
                  //   width: width,
                  // )
                  // CachedNetworkImage(
                  //   placeholder: (context, url) => Image.asset(
                  //     'assets/images/loading_image.gif',
                  //     fit: BoxFit.fill,
                  //   ),
                  //   imageUrl: certifications[index].image!,
                  //   height: isWeb ? width * .5 : width * .63,
                  //   fit: BoxFit.fill,
                  //   width: width,
                  // )

                  Image.asset(
                certifications[index].image!,
                width: width,
                height: 330,
                // height: width * .63,

                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
