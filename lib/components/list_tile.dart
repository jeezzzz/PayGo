import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 380,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset:
                  Offset(0, 2), // Adjust offset to create shadow at the bottom
              spreadRadius: 0, // Set spreadRadius to 0 for shadow at the bottom
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox(
                height: 300,
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/aabb/8a20/45cbefb25810dfb84d0c6482b6810465?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nxRvJtWt7DKsOZZ2Pm3DiD-PCwAYd6MWNAOQRa1jWZjmhFr2BczqoABj6dDhricVT~Az307iMz-VTG10JuGGpLUmS8zsCS8P-qIr1vtbSWVlrwfUPB2-fGblYehP5W7d4y6Mer5Yq3QPlYpXBoZez9FJL5RdeI-zwHPhfcy7byBrhHJdhPUpfEDGTiONWZVLDUCobaHp16Z4P6hXKJyNf63FhqN-c24fg~T8aQ-DPFml707pLh14Ptzix2XzqelVbjpLaez82Zran6j2SwdeWTvKD~~bAdPNQS5TlNBV3xkiIhO8C9Dt8IVQffRJyS8XRmj28kcaPMmZZ7Ooju386w__",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: toggleFavorite,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.1),
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Quad Special Workout Gym",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Near Andhra Bank, Manikonda, Hyderabad",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff696969),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "~3.4km",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff696969),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Divider(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Text(
                              "₹45 / session",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Book Slot",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff7E3AF2),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
