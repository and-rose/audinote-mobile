import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:math';

final List<Map<String, dynamic>> tracks = [
  {
    'title': 'Track Name',
    'artist': '56 Comments',
    'duration': '3:00',
  },
];

class TracksScreen extends StatelessWidget {
  const TracksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            background: const Image(
              image: AssetImage("assets/wwwhirl.png"),
              alignment: FractionalOffset(0.0, 0.7),
              fit: BoxFit.cover,
            ),
            titlePadding: const EdgeInsetsDirectional.only(
              start: 16,
              bottom: 5,
            ),
            title: Text("Tracks", style: Theme.of(context).textTheme.headline5),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          pinned: true,
          expandedHeight: 200.0,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(children: [
                ListTile(
                  onTap: () {},
                  leading: CircularPercentIndicator(
                    backgroundWidth: -1.0,
                    progressColor: Theme.of(context).colorScheme.primary,
                    radius: 18.0,
                    lineWidth: 4.0,
                    percent: Random().nextDouble(),
                    center: Text(
                      "50%",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  title: Text(tracks[0]['title']),
                  subtitle: Text(tracks[0]['artist']),
                  trailing: Text(tracks[0]['duration']),
                ),
                const Divider(height: 0)
              ]);
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
