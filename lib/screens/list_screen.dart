// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:paygo/components/list_tile.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<bool> isSelected = List.generate(10, (_) => false);
  List<String> itemTexts = ["Gym", "Swimming", "Badminton", "Yoga", "Zumba"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 50, bottom: 15, right: 2),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Jhansi",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Image.asset(
                                "assets/images/drop_down.png",
                                width: 18,
                                height: 18,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            "353/14 Jhokan Bagh, Jhansi, U.P//overflow",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xff555555),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemTexts.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected[index] = !isSelected[index];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        height: 20,
                        decoration: BoxDecoration(
                          color: isSelected[index]
                              ? Color(0xff7E3AF2)
                              : Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            itemTexts[index],
                            style: TextStyle(
                              color: isSelected[index]
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: CustomListTile(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ListScreen(),
  ));
}
