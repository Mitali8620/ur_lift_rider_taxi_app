import 'package:flutter/material.dart';
import 'package:urmusic_world/screens/book_ride3.dart';


class DeliveryBikeBookingScreen extends StatefulWidget {
  const DeliveryBikeBookingScreen({super.key});

  @override
  State<DeliveryBikeBookingScreen> createState() => _DeliveryBikeBookingScreenState();
}

class _DeliveryBikeBookingScreenState extends State<DeliveryBikeBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController ItemWeight = TextEditingController();
  TextEditingController ItemDescription = TextEditingController();
  TextEditingController ReceiverName = TextEditingController();

  bool isOnline = true;

  void toggleState() {
    setState(() {
      isOnline = !isOnline;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold
      (
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            icon: Image.asset(
              'assets/images/ic_back.png',
              height: 50,
              width: 50,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Center(
                  child:CircleAvatar(
                    radius: 50,
                    backgroundImage: isOnline
                        ? AssetImage('images/ic_credit_card.png')
                        : AssetImage("images/ic_cash.png"),
                    // backgroundImage:images/ic_credit_card.png AssetImage("assets/images/cash_big.png",),
                  )
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Item Weight.';
                            }
                            // _password = value;
                            return null;
                          },
                          controller: ItemWeight,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),

                            hintText: 'Item Weight',

                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),

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
                    //last Name
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Item Description .';
                            }
                            // _password = value;
                            return null;
                          },
                          controller: ItemDescription,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),

                            hintText: 'Item Description',

                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),

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
                    //email

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Receiver Name .';
                            }
                            // _password = value;
                            return null;
                          },
                          controller: ReceiverName,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),

                            hintText: 'Receiver Name',

                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10.0),

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
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.89,
                          decoration: BoxDecoration(
                            color: isOnline ? Colors.grey : Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isOnline = false;
                              });
                              // Perform any action you want for Cash button
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/cash.png',
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(width: 23,),
                                Text(
                                  'Cash',
                                  style: TextStyle(
                                    // color: colors.Appbar,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Center(
                        child:  Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.89,
                          decoration: BoxDecoration(
                            color: isOnline ? Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isOnline = true;
                              });
                              // Perform any action you want for Online button
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/online.png',
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(width: 23,),
                                Text(
                                  'Online',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),




                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('N 15.78',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        SizedBox(width: 23,),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
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
                                            builder: (context) => BookRideScreen3()));
                                  },
                                  child: Center(
                                    child: Text(
                                      'Book Ride',
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
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
