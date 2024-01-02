import 'package:flutter/material.dart';
import 'package:urmusic_world/screens/book_ride2.dart';


class BookRideScreen extends StatefulWidget {
  const BookRideScreen({super.key});

  @override
  State<BookRideScreen> createState() => _BookRideScreenState();
}

class _BookRideScreenState extends State<BookRideScreen> {
  final _formKey = GlobalKey<FormState>();
  var snackBar = SnackBar(
    content: Text('Can not Empty!'),
  );
  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  TextEditingController LocationCtr = TextEditingController();
  TextEditingController DestinationCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold
      (
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset('assets/images/ic_back.png',
                              height: 40,
                              width: 40
                            ),
                          ),
                        onTap: () => Navigator.pop(context),
                        ),
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Container(
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please Enter your location.';
                                        }
                                        // _password = value;
                                        return null;
                                      },
                                      controller: LocationCtr,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        errorStyle: TextStyle(
                                          color: Colors.white,
                                        ),

                                        hintText: 'Location',
                                        contentPadding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 10.0),

                                        // contentPadding: EdgeInsets.only(top: 5),

                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(

                                          ),
                                          borderRadius: BorderRadius.circular(18),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                          ),
                                          borderRadius: BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.01,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        top: 10
                                    ),
                                    child: Container(
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Destination .';
                                          }
                                          // _password = value;
                                          return null;
                                        },

                                        controller: DestinationCtr,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.emailAddress,
                                        // obscureText: _passwordVisible ? false : true,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          errorStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          hintText: 'Enter Destination',
                                          contentPadding: const EdgeInsets.symmetric(
                                              vertical: 8.0, horizontal: 10.0),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(18),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                            ),
                                            borderRadius: BorderRadius.circular(18),
                                          ),
                                        ),
                                      ),
                                    )),


                              ],
                            ),
                          ),

                        ),


                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        // color: colors.Appbar,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),

                      ),
                      child: Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width *0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // color: colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Office',style: TextStyle(
                                              fontWeight: FontWeight.bold
                                          ),),
                                          Icon(Icons.delete,size: 35)
                                        ],
                                      ),
                                      Text("Hello all tenants, i request to all please \n"
                                          "pay the maintenance on the time .",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                ),
                Positioned(
                  bottom: 35,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)),
                          child: InkWell(
                              onTap: () {
                                // _submit();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BookRideScreen2()));
                              },
                              child: Center(
                                  child: Text(
                                    'Book Ride',
                                    style: TextStyle(
                                        // color: colors.Appbar,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ))),
                        ),
                      ],
                    ),
                    )

                /* Positioned(
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width *0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: colors.Appbar,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Office',style: TextStyle(
                                            fontWeight: FontWeight.bold
                                        ),),
                                        Icon(Icons.delete,size: 35)
                                      ],
                                    ),
                                    Text("Hello all tenants, i request to all please \n"
                                        "pay the maintenance on the time .",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                      ),),

                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),*/





              ],
            ),
          ],
        ),
      ),

    ));
  }
}
