import 'package:flutter/material.dart';

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
    Home(),
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
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children:[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning,',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Aashifa Sheikh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    onPressed: Placeholder.new, 
                    shape: CircleBorder(),
                    mini: true, 
                    child: Icon(
                      Icons.notifications,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(50),
        child: ListBody(
          children: [
            Container(
              width: 100,
              height: 175,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '11:00 AM',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                    Text(
                      '200ml water(2 Glass)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      ),
                    )
                  ]
                ),  
              )
            ),
            Container(
              height: 50,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,  
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue.shade200,
                        width: 10
                      )  
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0,50,0,0),
                      child: Center(
                          child: Text(
                            '500ml',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                            ),
                          )
                      )
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 200,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('9:30 AM'),
                          Expanded(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child:Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('100ml'),
                                  ) 
                                ),
                                Expanded(
                                  child:Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('10%'),
                                  ) 
                                )
                              ],
                            )
                          )
                        ],
                      )
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Target',
                              selectionColor: Colors.grey  
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '2000ml',
                            ),
                          )
                        ],    
                      ),
                    ),
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

