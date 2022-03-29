import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Widget singleProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
              flex:2,
              child: Image.network('https://www.acouplecooks.com/wp-content/uploads/2019/11/Roasted-Vegetables-002-800x1000.jpg')
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('vegetables',style: TextStyle(color: Colors.black,fontSize: 16),),
                    Text('50gm',style: TextStyle(color: Colors.grey,fontSize: 16),),
                    Container(
                      height: 18,

                      child: OutlineButton(
                        child: Row(
                          children: [
                            Text('50gm')
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),

                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey  ,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: null,

            ),
            ListTile(
              leading:Icon(Icons.home_outlined),
              title: Text("Home"),
            ),
            ListTile(
              leading:Icon(Icons.home_outlined),
              title: Text("Home"),
            ), ListTile(
              leading:Icon(Icons.home_outlined),
              title: Text("Home"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,

                children: [
                  Text('Contract'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call Us:'),
                      SizedBox(width: 10),
                      Text('0987777'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Call Us:')
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: Text('home screen',style: TextStyle(
            color: Colors.black,fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius:12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 15,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop,size: 15,color: Colors.black,),


            ),
          ),
        ],
      ),
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage('https://static.langimg.com/thumb/msid-87596718,imgsize-53816,width-540,height-405,resizemode-75/ei-samay.jpg'),

                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 120,bottom: 10),
                            child: Container(
                              height:50,
                              width:50,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50)
                                  )

                              ),
                              child: Text('vegi'),

                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container(),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('kjkjk'),
                  Text('kkk'),
                ],

              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  singleProducts(),
                  singleProducts(),

                  singleProducts(),

                  singleProducts(),

                  singleProducts(),

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text('view all'),
                ],

              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  singleProducts(),
                  singleProducts(),

                  singleProducts(),

                  singleProducts(),

                  singleProducts(),

                ],

              ),
            ),


          ],
        ),
      ),
    );
  }
}
