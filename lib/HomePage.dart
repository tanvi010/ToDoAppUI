import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'NewNote.dart';
import 'NewCheckList.dart';
import 'NewTask.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String filterType = "Today";
  String taskpop = "close";
  CalendarController ctrlr = new CalendarController();
  DateTime today = new DateTime.now();
  var monthname = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEPT",
    "OCT",
    "NOV",
    "DEC"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Color(0xfff96060),
                elevation: 5,
                title: Text(
                  "Work List",
                  style: TextStyle(fontSize: 30),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.short_text,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                height: 70,
                color: Color(0xfff96060),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              filterType = "Today";
                            });
                          },
                          child: Text(
                            "Today",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "Today")
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              filterType = "Monthly";
                            });
                          },
                          child: Text(
                            "Monthly",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 4,
                          width: 120,
                          color: (filterType == "Monthly")
                              ? Colors.white
                              : Colors.transparent,
                        )
                      ],
                    )
                  ],
                ),
              ),
              (filterType == "Monthly")
                  ? TableCalendar(
                      calendarController: ctrlr,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      initialCalendarFormat: CalendarFormat.week,
                    )
                  : Container(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today ${monthname[today.month - 1]},${today.day} / ${today.year}",
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      taskWidget(
                          Color(0xfff96060), "Meeting with someone", "9:00 AM"),
                      taskWidget(Colors.blue, "Have Lanch", "12:00 PM"),
                      taskWidget(
                          Colors.green, "Take your medicines", "12:30 PM")
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xff292e4e),
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "My Task",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Menu",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 80,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.content_paste,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Quick",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          taskpop = "open";
                          setState(() {});
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Color(0xfff96060), Colors.red],
                              ),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 40.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            child: (taskpop == "open") ? Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.3),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    taskpop = "close";
                  },
                  child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10),),
                     color: Colors.white,
                   ),
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 1.0),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewTask()));
                          },
                          child: Container(
                            child: Text("Add Task", style: TextStyle(fontSize: 18.0),),

                          ),
                        ),
                        Container(
                          height: 1.0,
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.black.withOpacity(0.2),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewNote()));
                          },
                          child: Container(
                            child: Text("Add Quick Note", style: TextStyle(fontSize: 18.0),),

                          ),
                        ),
                        Container(
                          height: 1.0,
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.black.withOpacity(0.2),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewCheckList()));
                          },
                          child: Container(
                            child: Text("Add Checklist", style: TextStyle(fontSize: 18.0),),

                          ),
                        ),
                        SizedBox(height: 1.0,)

                      ],
                    ),
                  ),
                ),
              ),

            ):Container(),

          ),
        ],


      ),
    );
  }

  Slidable taskWidget(Color color, String title, String time) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.3,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: Offset(0, 9),
              blurRadius: 20,
              spreadRadius: 1)
        ]),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: color, width: 4),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              height: 50,
              width: 5,
              color: color,
            )
          ],
        ),
      ),
      secondaryActions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconSlideAction(
            caption: "Edit",
            color: Colors.white,
            icon: Icons.edit,
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconSlideAction(
            caption: "Delete",
            color: color,
            icon: Icons.edit,
            onTap: () {},

          ),
        )
      ],
    );
  }

}
