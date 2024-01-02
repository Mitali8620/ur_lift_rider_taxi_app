import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:urmusic_world/screens/delivery_bike_ride.dart';


class BookRideScreen3 extends StatefulWidget {
  const BookRideScreen3({super.key});

  @override
  State<BookRideScreen3> createState() => _BookRideScreen3State();
}

class _BookRideScreen3State extends State<BookRideScreen3> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kMyLocation = CameraPosition(
    target: LatLng(22.7196, 75.8577), // Your desired location
    zoom: 8,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:  Column(
          children: [

            Stack(
                children:[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.878,

                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kMyLocation,
                    ),
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
                      bottom: 0,
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                            color: Color(0xFFECF3F9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Image.asset('assets/images/waitingscrpng.png',
                                      height: 120,
                                      width: 140,)
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/picklocic.png',
                                        height: 40,width: 35,
                                      ),
                                      Text('315, Mangal Nagar Road, Mangal Nagar, \n'
                                          'Indore, Madhya Pradesh 452014,India',
                                        maxLines: 3,)

                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Column(
                                    children: [

                                      Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 1),
                                        child: Center(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height * 0.06,
                                            width: MediaQuery.of(context).size.width * 0.6,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(12)),
                                            child: InkWell(
                                                onTap: () {
                                                  // _submit();
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => DeliveryBikeBookingScreen()));
                                                },
                                                child: Center(
                                                  child: Text(
                                                    'Cencel Ride',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BookRideScreen3()));
                                  },
                                ),


                              ],
                            ),
                          ),
                        ),
                      )
                  ),

                ]

            ),
            /*Stack(
                children:[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,

                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kLake,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            color: colors.Appbar,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Image.asset('assets/images/waitingscrpng.png',
                                  height: 120,
                                  width: 140,)
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/picklocic.png',
                                        height: 40,width: 35,
                                      ),
                                      Text('315, Mangal Nagar Road, Mangal Nagar, \n'
                                          'Indore, Madhya Pradesh 452014,India',
                                        maxLines: 3,)

                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Column(
                                    children: [

                                      Divider(),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                        child: Center(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height * 0.06,
                                            width: MediaQuery.of(context).size.width * 0.6,
                                            decoration: BoxDecoration(
                                                color: colors.secondary,
                                                borderRadius: BorderRadius.circular(12)),
                                            child: InkWell(
                                                onTap: () {
                                                  // _submit();
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => DeliveryBikeBookingScreen()));
                                                },
                                                child: Center(
                                                  child: Text(
                                                    'Cencel Ride',
                                                    style: TextStyle(
                                                        color: colors.Appbar,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BookRideScreen3()));
                                  },
                                ),


                              ],
                            ),
                          ),
                        ),
                      )
                  )
                ]
            ),*/
          ],
        ),

    ));

  }
}
