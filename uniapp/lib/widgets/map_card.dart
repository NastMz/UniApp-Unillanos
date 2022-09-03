import 'package:flutter/material.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/widgets/map_image.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final MapMarker item;

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation ==
        Orientation.landscape; // check if the orientation is landscape
    final cardItems = [
      Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item.address,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 2,
        child:
            Align(alignment: Alignment.center, child: MapCardImage(item: item)),
      ),
    ];

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: isLandscape
                ? Row(
                    children: cardItems,
                  )
                : Column(
                    children: cardItems,
                  )),
      ),
    );
  }
}
