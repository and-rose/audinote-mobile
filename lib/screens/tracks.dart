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
          surfaceTintColor: Theme.of(context).colorScheme.background,
          flexibleSpace: FlexibleSpaceBar(
            background: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                "assets/wwwhirl.png",
                alignment: const FractionalOffset(0.0, 0.7),
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
            title: Text("Tracks".toUpperCase(),
                style: Theme.of(context).textTheme.headline6),
            titlePadding: const EdgeInsetsDirectional.only(
              bottom: 2.0,
            ),
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
