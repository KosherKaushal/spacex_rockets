import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:spacex_rockets/common/ui_assistance.dart';
import 'package:spacex_rockets/network/response/rocket_response.dart';
import 'package:url_launcher/link.dart';

import '../widgets/overview_tile.dart';

class RocketScreen extends StatelessWidget {
  static const String id = 'RocketScreen';
  const RocketScreen({Key? key, required this.rocketResponse})
      : super(key: key);

  final RocketResponse rocketResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(rocketResponse.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UIAssistance.verticalSpaceMedium(),
            CarouselSlider.builder(
              itemCount: rocketResponse.flickrImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = rocketResponse.flickrImages[index];
                return buildImage(context, urlImage, index);
              },
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
            UIAssistance.verticalSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ReadMoreText(
                rocketResponse.description,
                style: Theme.of(context).textTheme.bodyMedium,
                trimLength: 110,
                colorClickableText: Colors.lightBlueAccent,
              ),
            ),
            UIAssistance.verticalSpaceMedium(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Overview',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            UIAssistance.verticalSpaceMedium(),
            OverviewTile(
              leading: 'Height',
              measurementInFt: rocketResponse.height.feet,
              measurementInM: rocketResponse.height.meters,
            ),
            OverviewTile(
              leading: 'Diameter',
              measurementInFt: rocketResponse.diameter.feet,
              measurementInM: rocketResponse.diameter.meters,
            ),
            ListTile(
              leading: const Text('Cost Per Launch'),
              trailing: Text('\$ ${rocketResponse.costPerLaunch}'),
            ),
            ListTile(
              leading: const Text('Success Rate Percentage'),
              trailing: Text('${rocketResponse.successRatePct}'),
            ),
            ListTile(
              leading: const Text('Activity Status'),
              trailing: rocketResponse.active == false
                  ? const Icon(
                      CupertinoIcons.dot_square_fill,
                      color: Colors.redAccent,
                    )
                  : const Icon(
                      CupertinoIcons.dot_square_fill,
                      color: Colors.greenAccent,
                    ),
            ),
            UIAssistance.verticalSpaceMedium(),
            Link(
              target: LinkTarget.self,
              builder:
                  (BuildContext context, Future<void> Function()? followLink) =>
                      ListTile(
                tileColor: Colors.white10,
                title: Text(
                  rocketResponse.wikipedia,
                  style: const TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                trailing: const Icon(
                  CupertinoIcons.arrow_down_right_square,
                  color: Colors.lightBlueAccent,
                ),
                onTap: followLink,
              ),
              uri: Uri.parse(rocketResponse.wikipedia),
            ),
          ],
        ),
      ),
    );
  }

  Container buildImage(BuildContext context, String imageUrl, int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
        color: Colors.white12,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
