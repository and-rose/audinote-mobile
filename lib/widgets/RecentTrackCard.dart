import 'package:flutter/material.dart';

class RecentTrackCard extends StatelessWidget {
  const RecentTrackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 150,
        child: InkWell(
            onTap: () => {},
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(child: Text('Recent Track'))),
      ),
    );
  }
}
