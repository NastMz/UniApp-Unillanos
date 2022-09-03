import 'package:flutter/material.dart';
import 'package:uniapp/models/map_marker.dart';
import 'package:uniapp/widgets/image_popup.dart';

class MapCardImage extends StatelessWidget {
  const MapCardImage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final MapMarker item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => GestureDetector(
                onTap: () => Navigator.pop(context),
                child: ImagePopup(item.image, Key(item.title))));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: item.image != ''
            ? Image.asset(
                item.image,
                fit: BoxFit.cover,
              )
            : const FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  Icons.photo_album,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }
}
