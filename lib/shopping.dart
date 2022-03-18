import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson5/shopping2.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  TextEditingController emailControllar =TextEditingController();
  TextEditingController passwordControllar =TextEditingController();
  bool isvisible=true;
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: height*100,
                width: width*100,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 40,),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height*1,
                              width:width*100 ,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)
                                  )
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(50),
                                  child: Center(
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.pinkAccent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: TextField(
                                          controller:emailControllar ,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.email),
                                            hintText: 'Email',

                                          ),
                                        )
                                      )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 0,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Container(
                                        height: 70,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.pinkAccent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: TextField(
                                            obscureText: isvisible,
                                            controller: passwordControllar,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              prefixIcon: Icon(Icons.lock),
                                              hintText: 'Password',
                                              suffixIcon: IconButton(onPressed: (){
                                                setState(() {
                                                  isvisible = !isvisible;
                                                });
                                              }, icon: Icon(isvisible? Icons.visibility_off : Icons.visibility))
                                            ),
                                          )
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Forget Password?'),
                                      Text('Remember me?')
                                    ],
                                  ),
                                ),
                                SizedBox(height: 70,),
                                GestureDetector(
                                  child: Container(
                                    height: 70,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.pinkAccent,
                                      border: Border.all(
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text('Sign up',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),),
                                    ),
                                  ),
                                  onTap:  (){
                                    print('good');
                                    if(emailControllar.text.isEmpty
                                    || passwordControllar.text.isEmpty){
                                    print("is empty");
                                    ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content:
                                    Text("Invalid"),
                                    backgroundColor: Colors.blue,
                                    duration: Duration(seconds: 1),
                                    ),
                                    );
                                    }else{

                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (_)=> Shopping2 ())
                                        );
                                    };

                                  }
                                    )
                              ],
                            ),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              
            ],

          ),
        ),
      ),
    );
  }
}
