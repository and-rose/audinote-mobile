import 'package:flutter/material.dart';

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
            titlePadding: const EdgeInsetsDirectional.only(
              start: 16,
              bottom: 5,
            ),
            title: Text("Tracks", style: Theme.of(context).textTheme.headline6),
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
              return ListTile(
                onTap: () {},
                leading: const Icon(Icons.music_note),
                title: Text(tracks[0]['title']),
                subtitle: Text(tracks[0]['artist']),
                trailing: Text(tracks[0]['duration']),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
