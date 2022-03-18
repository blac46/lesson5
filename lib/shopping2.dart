import 'package:flutter/material.dart';

class Shopping2 extends StatefulWidget {
  const Shopping2({Key? key}) : super(key: key);

  @override
  _Shopping2State createState() => _Shopping2State();
}

class _Shopping2State extends State<Shopping2> {
  int currentindex=0;
  final _kBottomNavBarItems= <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text('Favorite')),
    BottomNavigationBarItem(icon: Icon(Icons.library_books),title: Text('Books')),
    BottomNavigationBarItem(icon: Icon(Icons.library_music),title: Text('Music')),
    BottomNavigationBarItem(icon: Icon(Icons.place),title: Text('Place')),
  ];

  @override
  bool _switchVal =true;
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.accessibility_new),
        title: Text('Shop',style: TextStyle(color: Colors.white),),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/IMG_1056.PNG'),
          )
          // Icon(Icons.access_time_filled,color: Colors.white,)
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: height*200,
                width: width*20,
                color: Colors.pink,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: width*1,
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  color: Colors.pink,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white,)),
                                  Text('Name',style: TextStyle(
                                    color: Colors.white,
                                  ),)

                                ],
                                    )
                                ),
                                Switch(value: this._switchVal,
                                    onChanged: (bool value) {
                                  setState(()=>this._switchVal=value);
                                  },
                                  activeColor:Colors.white ,
                                  ),
                              ],
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                ),
                                child: Row(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.book,color: Colors.white,)),
                                    Text('Contact',style: TextStyle(
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                              ),
                              Switch(value: this._switchVal,
                                  onChanged: (bool value) {
                                    setState(()=>this._switchVal=value);
                                  },
                                activeColor: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.pink,
                                  height: 50,
                                  width: 200,
                                  child: Text('Personalities',style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.pink,
                                  height: 50,
                                  width: 200,
                                  child: Text('Consualtaion',style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.pink,
                                  height: 50,
                                  width: 200,
                                  child: Text('Pubilication',style: TextStyle(
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: height*1,
                          width: width*1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                              )
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 210,
                                  width: width*10,
                                  color: Colors.white,
                                ),
                              ),
                              BottomNavigationBar(type:
                              BottomNavigationBarType.fixed,
                                backgroundColor: Colors.pink,
                                selectedItemColor: Colors.white,
                                unselectedItemColor: Colors.white12,
                                selectedFontSize: 14,
                                unselectedFontSize: 14,
                                currentIndex: currentindex,
                                onTap: (_onItemTap) async {
                                  // Respond to Item press
                                },
                                items: [
                                  BottomNavigationBarItem(
                                      title: Text('Favorities'),
                                      icon: Icon(Icons.favorite)
                                  ),
                                  BottomNavigationBarItem(
                                      title: Text('Books'),
                                      icon: Icon(Icons.library_books)
                                  ),
                                  BottomNavigationBarItem(
                                      title: Text('Music'),
                                      icon: Icon(Icons.library_music)
                                  ), BottomNavigationBarItem(
                                      title: Text('Place'),
                                      icon: Icon(Icons.place)
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
