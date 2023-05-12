import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:badges/badges.dart' as badges;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
 late PageController _pageController = PageController(initialPage: selectedIndex);
  bool _colorful = false;

  void _incrementCounter() {
    setState(() { });
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Row(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _colorful
          ? SlidingClippedNavBar.colorful(
              backgroundColor: Colors.white,
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              // activeColor: const Color(0xFF01579B),
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.orange,
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Discover',
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.green,
                ),
                BarItem(
                  icon: Icons.bookmark,
                  title: 'Save',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                ),
                BarItem(
                  icon: Icons.person_2_rounded,
                  title: 'Profile',
                  activeColor: Colors.cyan,
                  inactiveColor: Colors.purple,
                ),
              ],
            )
          : SlidingClippedNavBar(
              backgroundColor: Colors.white,
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              activeColor: const Color(0xFF01579B),
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                ),
                BarItem(
                  icon: Icons.search_rounded,
                  title: 'Discover',
                ),
                BarItem(
                  icon: Icons.bookmark,
                  title: 'Save',
                ),
                BarItem(
                  icon: Icons.person_2_rounded,
                  title: 'Profile',
                ),
              ],
            ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

List<Widget> _listOfWidget = <Widget>[
  
    Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          padding: const EdgeInsets.fromLTRB(30, 50, 10, 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(width: 100,child: Text('Hello, Dolly', textAlign: TextAlign.left,style: TextStyle(color: Color.fromARGB(255, 150, 116, 116), fontWeight: FontWeight.bold, fontSize: 16),)),
                              SizedBox(width: 250, child: Text('Lets find your dream place now!',overflow:TextOverflow.visible, softWrap: true, textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26, ),)),
                            ],
                          ),
                        ),
                   
                          //  Container(alignment: Alignment.topRight, padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),child: Container(padding: EdgeInsets.all(10), decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(20))),child: Icon(Icons.notifications)),),
                           Container(
                            padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                             child: badges.Badge(
                                 position: badges.BadgePosition.topEnd(top: -10, end: -12),
                                 showBadge: true,
                                 ignorePointer: false,
                                 onTap: () {},
                                 badgeContent:
                                     const Text("3"),
                           
                                 badgeStyle: const badges.BadgeStyle(
                                   shape: badges.BadgeShape.circle,
                                   badgeColor: Colors.red,
                                   padding: EdgeInsets.all(5),
                                   elevation: 0,
                                 ),
                                 child: const Icon(Icons.notifications, color: Colors.black, size: 29),
                               ),
                           ),
                        
                      ],
                    ),
                     Center(
                       child:SingleChildScrollView(
                        scrollDirection: Axis.horizontal ,
                        child:Row(children: [
                               Column(
                                 children: [
                                   Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: Color.fromARGB(50, 158, 158, 158), borderRadius: BorderRadius.all(Radius.circular(30))),child: const Icon(Icons.home,)),),
                                    Container(alignment: Alignment.center, padding: EdgeInsets.only(top: 10),
                                    child: Text("Home",textAlign: TextAlign.center,),),
                                                                 
                                   ],
                               ), Column(
                                 children: [
                                   Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: Color.fromARGB(50, 158, 158, 158), borderRadius: BorderRadius.all(Radius.circular(30))),child: const Icon(Icons.apartment,)),),
                                    Container(alignment: Alignment.center, padding: EdgeInsets.only(top: 10),
                                    child: Text("Apartment",textAlign: TextAlign.center,),),
                                                                 
                                   ],
                               ),
                                Column(
                                 children: [
                                   Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: Color.fromARGB(50, 158, 158, 158), borderRadius: BorderRadius.all(Radius.circular(30))),child: const Icon(Icons.house,)),),
                                    Container(alignment: Alignment.center, padding: EdgeInsets.only(top: 10),
                                    child: Text("Building",textAlign: TextAlign.center,),),
                                                         
                                   ], 
                               ),
                               Column(
                                 children: [
                                   Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: Color.fromARGB(50, 158, 158, 158), borderRadius: BorderRadius.all(Radius.circular(30))),child: const Icon(Icons.church,)),),
                                    Container(alignment: Alignment.center, padding: EdgeInsets.only(top: 10),
                                    child: Text("Church",textAlign: TextAlign.center,),),
                                                                 
                                   ],
                                   
                                    ), Column(
                                 children: [
                                   Container(alignment: Alignment.center, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(20), decoration: const BoxDecoration(color: Color.fromARGB(50, 158, 158, 158), borderRadius: BorderRadius.all(Radius.circular(30))),child: const Icon(Icons.mosque,)),),
                                    Container(alignment: Alignment.center, padding: EdgeInsets.only(top: 10),
                                    child: Text("Mosque",textAlign: TextAlign.center,),),
                                                                 
                                   ],
                                  
                                    ), 
                       ]) 
                     ), 
                     
                          
            )],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 550,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(64, 82, 198, 1) ,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                      child: Column(
                        children: [
                         const TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          border: InputBorder.none,
                          hintText: 'Search any place',
                          hintStyle: TextStyle(color: Colors.white), 
                ), 
              ),
                       Container(
                         padding: const EdgeInsets.only(left: 20),
                         height: 491,
                         decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                         
                        ),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Container(
                              padding: const EdgeInsets.all(15),
                              child:  const Text("Recomended",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
                            Container(
                              padding: const EdgeInsets.all(15),
                              child:  const Text("See all",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),),)
                            
                            ],
                          ),
                          Expanded(
                            child:
                            SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:  Row(children: [ 
                            Card(
                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://archello.s3.eu-central-1.amazonaws.com/images/2018/01/31/ModernApartmentExteriorDesign8.1517370640.4789.jpg"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                         Container(
                                          padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                          child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                       Container(
                                        padding: EdgeInsets.only(right: 15),
                                        alignment: Alignment.topLeft,
                                        child: const Icon(
                                          Icons.bookmark,
                                          size: 20,
                                          color: Colors.white,
                              ),
                            ),
                                        ],
                                        
                                      ),
                                       Container(
                                        alignment: Alignment.centerLeft,
                                         padding: const EdgeInsets.all(15),
                                          child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                        
                            ])
                            ),
                                ),
                            Card(
                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://archello.s3.eu-central-1.amazonaws.com/images/2018/01/31/ModernApartmentExteriorDesign8.1517370640.4789.jpg"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                         Container(
                                          padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                          child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                       Container(
                                       padding: EdgeInsets.only(right: 15),
                                        alignment: Alignment.topLeft,
                                        child: const Icon(
                                          Icons.bookmark,
                                          size: 20,
                                          color: Colors.white,
                              ),
                            ),
                                        ],
                                        
                                      ),
                                       Container(
                                          alignment: Alignment.centerLeft,
                                         padding: const EdgeInsets.all(15),
                                          child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                        
                            ])
                            ),
                                ),
                            Card(
                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://archello.s3.eu-central-1.amazonaws.com/images/2018/01/31/ModernApartmentExteriorDesign8.1517370640.4789.jpg"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                         Container(
                                          padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                          child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                       Container(
                                        padding: EdgeInsets.only(right: 15),
                                        alignment: Alignment.topLeft,
                                        child: const Icon(
                                          Icons.bookmark,
                                          size: 20,
                                          color: Colors.white,
                              ),
                            ),
                                        ],
                                        
                                      ),
                                       Container(
                                           alignment: Alignment.centerLeft,
                                         padding: const EdgeInsets.all(15),
                                          child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                        
                            ])
                            ),
                                ),
                            
                            ],
                            ),
                          ),
                          )
                        ]),
                       ) ],
                      ),
                     )
          ],
        ),
      ),
    ),
       
     
   Container(
    decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://www.google.com/maps/d/u/0/thumbnail?mid=1_wV22amgac2Wt4gvMqstKu57Fg0&hl=en_US"), fit: BoxFit.cover) ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      SizedBox(height: 250,)
                      ],
                    ),
 
           ] ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      height: 550,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(64, 82, 198, 1) ,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                      child: Column(
                        children: [
                         const TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          border: InputBorder.none,
                          hintText: 'Search any place',
                          hintStyle: TextStyle(color: Colors.white), 
                ), 
              ),
                       Container(
                         padding: const EdgeInsets.only(left: 20),
                         height: 491,
                         decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                         
                        ),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Container(
                              padding: const EdgeInsets.all(15),
                              child:  const Text("3 places found",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
                            Container(
                              padding: const EdgeInsets.all(15),
                              child:  const Text("See all",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),),)
                            
                            ],
                          ),
                          Expanded(
                            child:
                            SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:  Row(children: [ 
                             Card(
                              
                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ5uMHZviPa53Yps9uaLI8XLfTqCV2jmFQ0vcwzecm&s"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Container(alignment: Alignment.topLeft, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(10), decoration: const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(30))),child: Text("1")),),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                             Container(
                                              padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                              child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                           Container(
                                            padding: EdgeInsets.only(right: 15),
                                            alignment: Alignment.bottomLeft,
                                            child: const Icon(
                                              Icons.bookmark,
                                              size: 20,
                                              color: Colors.white,
                              ),
                            ),
                                            ],
                                            
                                          ),
                                           Container(
                                               alignment: Alignment.centerLeft,
                                             padding: const EdgeInsets.all(15),
                                              child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                            
                            ]),
                                    ],
                                  )
                            ),
                                ),
                            
                           Card(
                              
                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStUTB_lNn9PVdAxTLyWpqZ8kDWsokYjdMMW1UHv3ZH&s"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Container(alignment: Alignment.topLeft, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(10), decoration: const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(30))),child: Text("2")),),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                             Container(
                                              padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                              child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                           Container(
                                            padding: EdgeInsets.only(right: 15),
                                            alignment: Alignment.bottomLeft,
                                            child: const Icon(
                                              Icons.bookmark,
                                              size: 20,
                                              color: Colors.white,
                              ),
                            ),
                                            ],
                                            
                                          ),
                                           Container(
                                               alignment: Alignment.centerLeft,
                                             padding: const EdgeInsets.all(15),
                                              child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                            
                            ]),
                                    ],
                                  )
                            ),
                                ),
                            
                            Card(

                                child: Container(
                              
                                  height: 400,
                                  width: 250,
                                  decoration: const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)), image: DecorationImage(image: NetworkImage("https://archello.s3.eu-central-1.amazonaws.com/images/2018/01/31/ModernApartmentExteriorDesign8.1517370640.4789.jpg"),fit: BoxFit.cover),),
                              
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Container(alignment: Alignment.topLeft, padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),child: Container(padding: const EdgeInsets.all(10), decoration: const BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(30))),child: Text("3")),),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                             Container(
                                              padding: const EdgeInsets.only(left: 20,top: 20, right:20),
                                              child: const SizedBox( width: 90,child: Text('Bo,box stay California', textAlign: TextAlign.left,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),))),
                                           Container(
                                            padding: EdgeInsets.only(right: 15),
                                            alignment: Alignment.bottomLeft,
                                            child: const Icon(
                                              Icons.bookmark,
                                              size: 20,
                                              color: Colors.white,
                              ),
                            ),
                                            ],
                                            
                                          ),
                                           Container(
                                               alignment: Alignment.centerLeft,
                                             padding: const EdgeInsets.all(15),
                                              child: const SizedBox( width: 90,child: Text('128£', textAlign: TextAlign.left,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 18),))),
                                            
                            ]),
                                    ],
                                  )
                            ),
                                ),
                            
                            ],
                            ),
                          ),
                          )
                        ]),
                       ) ],
                      ),
                     )
          ],
        ),
      ),
    ),
   
  Container(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.bookmark,
          size: 56,
          color: Colors.brown,
        ),
        Text("Comming Soon")
      ],
    ),
  ),
  Container(
    alignment: Alignment.center,
    child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
          Icons.person_2,
          size: 56,
          color: Colors.brown,
    ),
    Text("Comming Soon")
        ],
      ),
  ),
];