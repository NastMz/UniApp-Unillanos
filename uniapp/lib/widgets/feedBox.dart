import 'package:flutter/material.dart';

Widget feedBox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],),
    child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 25.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                  child: Column(children: [
                Text(userName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 5.0),
                Text(date,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w100))
              ]))
            ]),
            const SizedBox(height: 10.0),
            if (contentText != "")
              Text(contentText,
                  style: const TextStyle(color: Colors.black, fontSize: 16.0)),
            const SizedBox(height: 10.0),
            if (contentImg != "") Image.network(contentImg),
            const SizedBox(height: 10.0),
          ],
        )),
  );
}
