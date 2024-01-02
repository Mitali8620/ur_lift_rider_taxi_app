import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:urmusic_world/screens/delivery_bike_ride.dart';


enum SingingCharacter { DeliveryBike, Car,  Tricvcle }

class BookRideScreen2 extends StatefulWidget {
  const BookRideScreen2({super.key});

  @override
  State<BookRideScreen2> createState() => _BookRideScreen2State();
}

class _BookRideScreen2State extends State<BookRideScreen2> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kMyLocation = CameraPosition(
    target: LatLng(22.7196, 75.8577), // Your desired location
    zoom: 8,

  );
  String gender = "male";
  SingingCharacter? _character = SingingCharacter.DeliveryBike;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Stack(
              children:[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,

                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kMyLocation,
                  ),
                ),

                Positioned(
                    bottom: 0,
                    child: SingleChildScrollView(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xFFECF3F9),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text('Available vehicle to select',style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      decorationThickness: 2,
                                      fontSize: 16
                                  ),),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.01,

                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width:  MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                      // color: colors.Appbar,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset('images/ic_car.png',
                                            height: 50,
                                            width: 30,
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text('Delivery Bike',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                decorationThickness: 1
                                            ),),


                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('N1724.42'),
                                           Radio<SingingCharacter>(
                                              value: SingingCharacter.DeliveryBike,
                                              groupValue: _character,
                                              onChanged: (SingingCharacter? value) {
                                                setState(() {
                                                  _character = value;
                                                });
                                              },
                                            ),

                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.01,

                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width:  MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                      // color: colors.Appbar,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset('images/ic_car.png',
                                            height: 50,
                                            width: 30,
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text('Delivery Bike',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                decorationThickness: 1
                                            ),),


                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('N1724.42'),
                                          Radio<SingingCharacter>(
                                            value: SingingCharacter.Car,
                                            groupValue: _character,
                                            onChanged: (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),

                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.01,

                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  width:  MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                      // color: colors.Appbar,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset('images/ic_car.png',
                                            height: 50,
                                            width: 30,
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text('Delivery Bike',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                decorationThickness: 1
                                            ),),


                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text('N1724.42'),
                                          Radio<SingingCharacter>(
                                            value: SingingCharacter.Tricvcle,
                                            groupValue: _character,
                                            onChanged: (SingingCharacter? value) {
                                              setState(() {
                                                _character = value;
                                              });
                                            },
                                          ),

                                        ],
                                      ),

                                    ],
                                  ),
                                ),





                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                ),
                Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                    /*  height: MediaQuery.of(context).size.height * 0.045,
                      width: MediaQuery.of(context).size.width * 0.4,*/
                      child: InkWell(
                        child: Image.asset(
                        'images/ic_my_rides.png',
                        height: 40,
                        width: 45,
                    ),

                    onTap: () => Navigator.pop(context)),
                    )
                    ),

                Positioned(
                    bottom: 3,
                    left: 40,
                    right: 40,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Color(0xFFECF3F9),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            // color: colors.secondary,
                            borderRadius: BorderRadius.circular(12)),
                        child: InkWell(
                            onTap: () {
                              // _submit();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DeliveryBikeBookingScreen()));
                            },
                            child: Center(
                                child: Text(
                                  'Book Ride',
                                  style: TextStyle(
                                      // color: colors.Appbar,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
                      )
                    )
                ),
              ]
          ),
        ],
      ),
    ));
  }
}
