import 'package:flutter/material.dart';
import 'package:water_tracker_bay/features/home_page/presentation/pages/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Center(child: Text('Analysis', style: TextStyle(fontSize: 24))),
    Center(child: Text('Alarm', style: TextStyle(fontSize: 24))),
    Center(child: Text('Setting', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
        setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'testing',
      home: Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined),
              label: 'Analysis',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 60,
                height: 60,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -25,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 4),
                                blurRadius: 5,
                                spreadRadius: 1
                              )
                            ]
                          ),
                        ),
                      )
                    ),
                    const Positioned(
                      top: -25,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.alarm,
                        )
                      ),
                    )
                  ],
                ),
              ),
              label: ''
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings_sharp),
              label: 'Setting',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}