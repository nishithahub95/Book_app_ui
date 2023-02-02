import 'package:flutter/material.dart';
class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {

    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
             gradient: LinearGradient(colors: [Color(0xFF007ADF),Color(0xFF00ECBC)],),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      offset: Offset(-20.0,0.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0
                  )
                ]
                  

            ),
            child: Stack(
              children: [
                Positioned(
                    top:80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                         // color: Colors.white,
                          gradient: LinearGradient(colors: [Color(0xFFAFF1DA),Color(0xFFFFE6FA)],),

                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topRight: Radius.circular(50))


                      ),
                    )
                ),
                Positioned(
                  top:115,
                  left: 30,
                  child: Text("Your Books",style: TextStyle(fontSize: 20,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),)
              ],
            )

          ),
          SizedBox(height: height*0.05,),
          Container(
         height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Material(
                  child: Container(
                    height: 180,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow:[

                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(-10.0,10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0)],
                      borderRadius: BorderRadius.circular(0.0),



                      )

                    ),
                  ),

                ),
                Positioned(
                  top: 0,
                    left: 30,

                    child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: 205,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image:AssetImage("images/book2.jpg")
                          )
                    ),
                  ),
                )
                ),
                Positioned(
                  top: 60,
                    left: 180,
                    
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        children: [
                          Text('OTHER LONDON',style: TextStyle(
                            fontSize: 18,
                              color: Color(0xFF2575FC),
                            fontWeight: FontWeight.bold
                          ),),
                          Text('M V STOTT',style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            width: 80,
                              child: Divider(color: Colors.black,)),
                          Text('It is larger than life',style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ))

              ],
            ),
          ),
          Expanded(child: MediaQuery.removePadding(context: context,
            removeTop: true,
            removeBottom: true,
            child: ListView(
              children: [
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10,top: 10),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFF007ADF),Color(0xFF00ECBC)],),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: Offset(-10.0,0.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                          )
                        ]
                      ),
                      padding: EdgeInsets.only(
                        left: 32,
                        top: 50.0,
                        bottom: 50
                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("THE BEST",style: TextStyle(color: Colors.white,
                            fontSize: 12
                            ),),
                            SizedBox(
                              height: 2,
                            ),
                            Text("your life starts here",style: TextStyle(color: Colors.white,
                                fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),

                          ],
                        ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10,top: 10),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xFF007ADF),Color(0xFF00ECBC)],),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(80)
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFF363f93).withOpacity(0.3),
                                offset: Offset(-10.0,0.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0
                            )
                          ]
                      ),
                      padding: EdgeInsets.only(
                          left: 32,
                          top: 50.0,
                          bottom: 50
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TRUE STORY",style: TextStyle(color: Colors.white,
                              fontSize: 12
                          ),),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Make it happend",style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
