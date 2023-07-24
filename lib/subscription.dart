import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class subscription extends StatefulWidget {
  const subscription({Key? key}) : super(key: key);

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: subscription_body(),
    );
  }
}
class subscription_body extends StatefulWidget {
  const subscription_body({Key? key}) : super(key: key);

  @override
  State<subscription_body> createState() => _subscription_bodyState();
}

class _subscription_bodyState extends State<subscription_body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        child: Container(
          child: Column(
            children: [
              Stack(



                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1ed4be),Color(0xff00fff7)],
                        ),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60)
                        )
                    ),),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 30
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("SUBSCRIPTION",style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(
                          height: 20,
                        ),
                        Price_card(
                          price: "127",
                          price_month: "3 Month",
                          pakage1: "2 Doctors",
                          pakage2: "5 Appointments",
                          pakage3: "3 Hours Call",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Price_card(
                          price: "127",
                          price_month: "3 Month",
                          pakage1: "2 Doctors",
                          pakage2: "5 Appointments",
                          pakage3: "3 Hours Call",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Price_card(
                          price: "127",
                          price_month: "3 Month",
                          pakage1: "2 Doctors",
                          pakage2: "5 Appointments",
                          pakage3: "3 Hours Call",
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                                ),
                                child: Text('Buy Pack',style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700
                                ),)))
                      ],
                    ),
                  )



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Price_card extends StatelessWidget {
  String price;
  String price_month;
  String pakage1;
  String pakage2;
  String pakage3;

  Price_card(
      {required this.price, required this.price_month, required this.pakage1, required this.pakage2, required this.pakage3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              spreadRadius: 2,

            )
          ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$$price',style: GoogleFonts.poppins(
                  fontSize: 45,
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(
                  height: 2,
                ),
                Text("$price_month",style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                ),)
              ],
            ),

          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$pakage1",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),),
                SizedBox(height: 2,),

                Text("$pakage2",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),),
                SizedBox(height: 2,),
                Text("$pakage3",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}



