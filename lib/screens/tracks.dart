import 'package:flutter/material.dart';

final List<Map<String, dynamic>> tracks = [
  {
    'title': 'Track 1',
    'artist': 'Artist 1',
    'album': 'Album 1',
    'duration': '3:00',
  },
  {
    'title': 'Track 2',
    'artist': 'Artist 2',
    'album': 'Album 2',
    'duration': '3:00',
  },
  {
    'title': 'Track 3',
    'artist': 'Artist 3',
    'album': 'Album 3',
    'duration': '3:00',
  },
  {
    'title': 'Track 4',
    'artist': 'Artist 4',
    'album': 'Album 4',
    'duration': '3:00',
  },
  {
    'title': 'Track 5',
    'artist': 'Artist 5',
    'album': 'Album 5',
    'duration': '3:00',
  },
  {
    'title': 'Track 6',
    'artist': 'Artist 6',
    'album': 'Album 6',
    'duration': '3:00',
  },
  {
    'title': 'Track 7',
    'artist': 'Artist 7',
    'album': 'Album 7',
    'duration': '3:00',
  },
  {
    'title': 'Track 8',
    'artist': 'Artist 8',
    'album': 'Album 8',
    'duration': '3:00',
  },
  {
    'title': 'Track 9',
    'artist': 'Artist 9',
    'album': 'Album 9',
    'duration': '3:00',
  },
  {
    'title': 'Track 10',
    'artist': 'Artist 10',
    'album': 'Album 10',
    'duration': '3:00',
  },
  {
    'title': 'Track 11',
    'artist': 'Artist 11',
    'album': 'Album 11',
    'duration': '3:00',
  },
  {
    'title': 'Track 12',
    'artist': 'Artist 12',
    'album': 'Album 12',
    'duration': '3:00',
  },
  {
    'title': 'Track 13',
    'artist': 'Artist 13',
    'album': 'Album 13',
    'duration': '3:00',
  },
];

class TracksScreen extends StatelessWidget {
  const TracksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tracks.length,
      prototypeItem: ListTile(
        leading: const Icon(Icons.music_note),
        title: Text(tracks.first['title']),
        subtitle: Text(tracks.first['artist']),
        trailing: Text(tracks.first['duration']),
      ),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {},
          leading: const Icon(Icons.music_note),
          title: Text(tracks[index]['title']),
          subtitle: Text(tracks[index]['artist']),
          trailing: Text(tracks[index]['duration']),
        );
      },
    );
  }
}
