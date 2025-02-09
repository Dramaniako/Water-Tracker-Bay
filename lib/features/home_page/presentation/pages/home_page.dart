import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
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