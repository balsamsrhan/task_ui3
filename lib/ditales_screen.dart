import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailesScreen extends StatelessWidget {
  const DetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 20),
          title: Text(
            'Profile',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          actions: [Image.asset('icons/menu.png', height: 20, width: 20)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFDEDEB), width: 10),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'icons/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Adewale Taiwo', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 8),
                        Text(
                          'House Manager',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffDF3222),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,

                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Color(0xffFDEDEB),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          spacing: 10,
                          children: [
                            Text(
                              'Wallet Balance:',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              '\$5046.57',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Total Service',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '24',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Color(0xffDF3222),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          spacing: 20,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Master Card',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Text(
                              '5999-XXXX',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Adewale T.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container()
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'Houses',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        margin: EdgeInsets.only(right: 20),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadowColor: Colors.grey,
                        elevation: 5,

                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            spacing: 8,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xffDF3222),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),

                              Text(
                                'Add\nWorker',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      HouseWidget(house_name: 'Tobi Lateef'),
                      HouseWidget(house_name: 'Queen Needle'),
                      HouseWidget(house_name: 'Joan Blessing'),
                      HouseWidget(house_name: 'Joan Blessing'),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Column(
                  spacing: 14,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 14,
                        ),
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(231, 158, 158, 158),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child:Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('icons/elec.png', width: 60, height: 60),
                              SizedBox(width: 10),
                              Text(
                                'Electrical',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                    ),

                    Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 14,
                        ),
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(231, 158, 158, 158),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child:Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('icons/head.png', width: 60, height: 60),
                              SizedBox(width: 10),
                              Text(
                                'Other',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HouseWidget extends StatelessWidget {
  String house_name;

  HouseWidget({required this.house_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),

      width: 100,
      height: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,

        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 158, 158, 158),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffFDEDEB), width: 4),
              shape: BoxShape.circle,
            ),
            child: Image.asset('icons/profile.png', fit: BoxFit.cover),
          ),

          Text(
            house_name,
            textAlign: TextAlign.center,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}