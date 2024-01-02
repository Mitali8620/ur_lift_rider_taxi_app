/*
import 'package:flutter/material.dart';


class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xFFECF3F9),
      appBar: AppBar(
        title: Center(
          child: Text('Favorites',
            style: TextStyle(
                color: colors.secondary,
                fontSize: 18,
                fontWeight: FontWeight.w900
            ),
          ),
        ),
      leading:
      IconButton(
          icon:  Image.asset('assets/images/ic_back.png',
            height: 50,
            width: 50,
          ),
          onPressed: () =>  Navigator.pop(context)
      ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    child: Icon(Icons.add_circle_sharp,color: Colors.black,size: 45,),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AddFavoritesScreen()));
                  },

                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
*/
