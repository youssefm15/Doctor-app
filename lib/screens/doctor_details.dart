import "package:flutter/material.dart";
import 'package:flutter_app_4/models/doctor.dart';
import 'package:flutter_app_4/screens/doctor_list.dart';
import 'package:flutter_app_4/screens/confirmation.dart';
class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  DoctorDetails(this.doctor);
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      bottomNavigationBar: bottomNavBar(),
      body: Column(
        children: [
          Row(
            children: [
              // Image.asset('assets/images/1.jpg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  // child: Image.asset('assets/images/1.jpg'),
                  backgroundImage: AssetImage(doctor.urlPhoto),
                  radius: 65,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        doctor.name,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    doctor.speciality,
                    style: TextStyle(
                        color: Color(0xff07da5f),
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  Row(children: [
                        for(var item =0 ;item<doctor.rating;item++ ) Icon(
                        Icons.star_rate_sharp,
                        color: Color(0xffffd500),
                        ),
                    Text(
                      doctor.rating.toString(),
                      style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                    )
                  ])
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0, 0),
                  ),
                  Text(
                    'ShortDescription',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0, 0),
                  ),
                  Text(
                    doctor.shortDescription,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0, 0),
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0, 0),
                  ),
                  Icon(Icons.location_on),
                  Text(
                    doctor.address,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 50.0, 0, 0),
                  ),
                  Image.asset(
                    doctor.locationphoto,
                    width: 350,
                    height: 200,
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => confirmation()));
                    },
                    child: Text(
                      "Request",
                      style: TextStyle(fontSize: 14),
                    ),
                    style: ButtonStyle(
                        //padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff07da5f)),
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(250.0, 50.0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        BorderSide(color: Color(0xff07da5f))))),
                  ),
                ],
              )
            ],
          )
        ],
      ),
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
