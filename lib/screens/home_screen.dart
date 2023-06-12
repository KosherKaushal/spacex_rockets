import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_rockets/network/response/rocket_response.dart';
import 'package:spacex_rockets/screens/rocket_screen.dart';

import '../provider/rockets_response_provider.dart';
import '../widgets/rocket_card.dart';

class HomeScreen extends ConsumerWidget {
  static const String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(rocketsResponseProvider);
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Image.asset(
          'images/spacex.png',
          width: 120.0,
          height: 120.0,
        ),
      ),
      backgroundColor: Colors.white,
      body: _data.when(
        data: (_data) {
          List<RocketResponse> rocketList = _data.map((e) => e).toList();
          print(rocketList.first);
          return SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15.0,
                right: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: rocketList.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: RocketCard(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RocketScreen(
                                      rocketResponse: rocketList[index],
                                    ))),
                        country: rocketList[index].country,
                        engineCount: rocketList[index].engines.number,
                        name: rocketList[index].name,
                        image: rocketList[index].flickrImages.first,
                        id: rocketList[index].id,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
