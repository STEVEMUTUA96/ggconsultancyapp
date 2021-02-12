import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
       title: Row(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Padding(
             padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
             child: Column(
               children: [
                 CircleAvatar(
                   radius: 14,
                   backgroundColor: Colors.white,
                   child: CircleAvatar(
                     radius: 12,
                     backgroundColor: Colors.greenAccent,
                     backgroundImage: AssetImage('assets/images/logo.png'),
                   ),
                 ),
//
               ],
             ),
           ),
           SizedBox(
             width: 10,
           ),
           Text('Green&Gold',
             style: TextStyle(
                 fontWeight: FontWeight.w400,
                 fontSize: 20,
                 color: Colors.white
             ),),
         ],
       ),



        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.announcement,
              color: Colors.white,),
            onPressed: () {

            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_active,
              color: Colors.white,),

          )
        ],
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        centerTitle: true,
      ),
       drawer: getDrawer(),

      body: ListView(

        children: <Widget>[
          Container(
            child: Stack(
              children: [
                Container(
                  height: 190,
                  color: Colors.greenAccent,

                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      getLevelOne(),

                      getLevelTwo(),

                      SizedBox(
                        height: 40,
                      ),

                      getLevelThree(),

                      SizedBox(
                        height: 40,
                      ),

                      getLevelFour()
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget getLevelOne() {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Container(


        padding: EdgeInsets.only(left: 10),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.white,

                child: CircleAvatar(
                  radius: 44,
                  backgroundColor: Colors.greenAccent,
                  child: CircleAvatar(
                    radius: 38,
                    backgroundColor: Colors.grey,

                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(30, 11, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Good day, Stephen',
                    style: TextStyle(

                    ),

                  ),
                  SizedBox(
                    height: 5,
                    width: 10,
                  ),
                  Text(
                    'What do you want ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'to do today?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }


  Widget getLevelTwo() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)

        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clock In',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'You haven`t clock in yet',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                      color: Colors.black
                  ),
                ),


                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Text(
                      'Have a Nice Day...',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.greenAccent
                      ),
                    ),
                    Icon(Icons.access_time,
                      color: Colors.greenAccent,)
                  ],
                ),

              ],
            ),
          ),

          CircleAvatar(
            radius: 53,
            backgroundColor: Colors.greenAccent,
            child: CircleAvatar(
              radius: 52,
              backgroundColor: Colors.white,

              child: CircleAvatar(
                radius: 47,
                backgroundColor: Colors.greenAccent,
                child: Text(
                  'Clock In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 17
                  ),
                ),

              ),
            ),
          )
        ],
      ),
    );
  }


  Widget getLevelThree() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)
          )
      ),
      child: Column(
        children: [
          icon_grid(FontAwesomeIcons.gg, "FOLLOW-UP",
              FontAwesomeIcons.briefcaseMedical, "PACKAGE",
              FontAwesomeIcons.connectdevelop, "JOB"),
          SizedBox(
            height: 40,
          ),
          icon_grid(FontAwesomeIcons.water, "CALENDAR", FontAwesomeIcons.tasks,
              "REPORTS", FontAwesomeIcons.chartLine, "ATTENDANCE"),
          SizedBox(
            height: 40,
          ),
          icon_grid(
              MdiIcons.bookmark, "HR BOOK", FontAwesomeIcons.moneyBillWave,
              "BILLS", FontAwesomeIcons.buffer, "APPROVAL"),
        ],
      ),
    );
  }


  icon_grid(IconData one, String s1, IconData two, String s2, IconData three,
      String s3) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(one, size: 60, color: Colors.greenAccent,),
              SizedBox(
                height: 10,
              ),
              Text(
                s1,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(two, size: 60, color: Colors.greenAccent,),
              SizedBox(
                height: 10,
              ),
              Text(
                s2,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(three, size: 60, color: Colors.greenAccent,),
              SizedBox(
                height: 10,
              ),
              Text(
                s3,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
      ],
    );
  }


  Widget getLevelFour() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)
          )
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Text(
              'Upcoming Events',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20
              ),
            ),
            trailing: Icon(FontAwesomeIcons.calendarAlt,
              color: Colors.greenAccent,
            ),
          ),
          event_row("Dec 25", "Christmass"),
          Divider(
            height: 20,
          ),
          event_row("Dec 25", "Christmass"),
          Divider(
            height: 20,
          ),
          event_row("Dec 25", "Christmass"),
          Divider(
            height: 20,
          ),
          event_row("Dec 25", "Christmass"),
          Divider(
            height: 20,
          ),
          event_row("Dec 25", "Christmass"),
        ],
      ),
    );
  }


  event_row(String s1, String s2) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 25,
        ),
        Text(
          s1,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Container(
          width: 3,
          height: 30,
          color: Colors.greenAccent,
        ),

        SizedBox(
          width: 15,
        ),
        Text(
          s2,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }


  Widget getDrawer() {
    return Drawer(
         child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           color: Colors.white,
           child: ListView(
             padding: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 0),
             children: <Widget>[
               Divider(
               ),
               Container(
                 height: 280,
                 decoration: BoxDecoration(
                     gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         stops: [0.5, 0.9],
                         colors: [
                           Colors.greenAccent,
                           Colors.teal
                         ]
                     )
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(
                       height: 50,
                     ),
                     Row(
                       mainAxisSize: MainAxisSize.min,
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         SizedBox(
                           width: 20,
                         ),
                         CircleAvatar(
                           minRadius: 52,
                           backgroundColor: Colors.white,
                           child: CircleAvatar(
                             minRadius: 51,
                             backgroundColor: Colors.greenAccent,
                             child: CircleAvatar(
                               backgroundImage: AssetImage('assets/images/logo.png'),
                               minRadius:47,
                             ),
                           ),
                         ),


                       ],
                     ),
                     SizedBox(height: 16,),
                     Container(
                            height: 40,
                            width: 200,
                       decoration: BoxDecoration(color: Colors.greenAccent,
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(20),
                             topLeft: Radius.circular(20),
                             bottomLeft: Radius.circular(20),
                             bottomRight: Radius.circular(20),
                            )
                         ),
                       child: Column(
                         mainAxisSize: MainAxisSize.min,
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text("Stephen Mutua",
                             style: TextStyle(
                                 fontSize: 18.0,
                                 color: Colors.white
                             ),
                           ),
                         ],
                       ),
                     ),

                   ],
                 ),
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 title: Text('home'),
                 leading: Icon(
                   Icons.home,
                   color: Colors.greenAccent,
                 ),
                 onTap: () {
                   Navigator.pop(context);
                   },

               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 leading: Icon(
                   FontAwesomeIcons.basketballBall,
                   color: Colors.greenAccent,
                 ),
                 title: Text('Company'),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 title: Text('Settings'),
                 leading: Icon(
                   Icons.settings,
                   color: Colors.greenAccent,
                 ),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 title: Text('About us'),
                 leading: Icon(
                   Icons.account_box,
                   color: Colors.greenAccent,
                 ),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 title: Text('App Feedback'),
                 leading: Icon(
                   Icons.feedback,
                   color: Colors.greenAccent,
                 ),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
               ListTile(
                 title: Text('Share App'),
                 leading: Icon(
                   FontAwesomeIcons.paperPlane,
                   color: Colors.greenAccent,
                 ),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),
               Divider(
                 color: Colors.greenAccent,
               ),
             ],
           ),
         ),

    );
  }


  Widget ggBook(){
    return Container(
      child: Column(
        children: [


        ],
      ),
    );
  }

  }
