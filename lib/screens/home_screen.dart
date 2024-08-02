import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paygo/components/list_tile.dart';
import 'package:paygo/screens/list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              minHeight: 100,
              maxHeight: 100,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF1E7FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 40, bottom: 10, right: 2),
                  child: Row(
                    children: [
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
                      const Spacer(flex: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 2),
                                child: Image.asset(
                                  "assets/images/points.png",
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                              const Text(
                                "Points",
                                style: TextStyle(
                                    color: Color(0xff555555),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              "3,256",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                ),
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 210,
                  decoration: const BoxDecoration(
                    color: Color(0xffF1E7FF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Hello, ajeesh!",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w700),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            "What would you like\nto do today?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 131, 76, 219),
                                fontSize: 28,
                                height: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(88, 38, 69, 179),
                                      width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/images/search.png",
                                        width: 35,
                                        height: 25,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Find a nearby activity",
                                        style: TextStyle(
                                            color: Color(0x66708580),
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/images/filter.png",
                                width: 60,
                                height: 60,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 20, right: 20),
                            child: SizedBox(
                              width: 65,
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/gym.png",
                                    width: 65,
                                    height: 65,
                                  ),
                                  const Text(
                                    "Gym",
                                    style: TextStyle(
                                      color: Color(0xff555555),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            child: SizedBox(
                              width: 80,
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/swimming.png",
                                    width: 65,
                                    height: 65,
                                  ),
                                  const Text(
                                    "Swimming",
                                    style: TextStyle(
                                      color: Color(0xff555555),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            child: SizedBox(
                              width: 80,
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/badminton.png",
                                    width: 65,
                                    height: 65,
                                  ),
                                  const Text(
                                    "Badminton",
                                    style: TextStyle(
                                      color: Color(0xff555555),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, top: 20, right: 20),
                            child: SizedBox(
                              width: 65,
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/yoga.png",
                                    width: 65,
                                    height: 65,
                                  ),
                                  const Text(
                                    "Yoga",
                                    style: TextStyle(
                                      color: Color(0xff555555),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            child: SizedBox(
                              width: 80,
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/zumba.png",
                                    width: 65,
                                    height: 65,
                                  ),
                                  const Text(
                                    "Zumba",
                                    style: TextStyle(
                                      color: Color(0xff555555),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListScreen()),
                            );
                          },
                          child: const Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 20, right: 20),
                            child: SizedBox(
                              width: 80,
                              height: 100,
                              child: Center(
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                      color: Color(0xff7E3AF2),
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomListTile()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff6C2BD9), // Color for selected item
        unselectedItemColor:
            const Color(0xff707070), // Color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
