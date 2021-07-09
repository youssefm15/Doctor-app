import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';
import 'package:flutter_app_4/screens/doctor_details.dart';
import 'package:flutter_app_4/screens/doctor_list.dart';

class confirmation extends StatelessWidget {
  int _selectedItem = 0;
  Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      bottomNavigationBar: bottomNavBar(),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
            ),
            Image.asset(
              'assets/images/checked.png',
              width: 200,
              height: 200,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 'Your Request Has Been Approved'  ,
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Appointment with Your doctor is scheduled ',
            style:TextStyle(
            fontSize: 18,
        )
            )
          ],
        )
      ]),
    );
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
      //backgroundColor:Color(0xff07da5f) ,
      selectedItemColor: Color(0xff07da5f),
      currentIndex: _selectedItem,
      onTap: (index) {
        //setState(() {
        _selectedItem = index;
        //});
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget appBar(BuildContext context) {
    Doctor doctor;
    return AppBar(
      title: Text('Doctor Details'),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => DoctorList()));
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.workspaces_filled),
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }
}
