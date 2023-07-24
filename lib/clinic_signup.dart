import 'dart:html';

import 'package:clinic_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';


class clinic_signup extends StatefulWidget {
  const clinic_signup({super.key});

  @override
  State<clinic_signup> createState() => _clinic_signupState();
}

class _clinic_signupState extends State<clinic_signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myBody(),
    );
  }
}
class myBody extends StatefulWidget {
  const myBody({super.key});

  @override
  State<myBody> createState() => _myBodyState();
}

class _myBodyState extends State<myBody> {
  TextEditingController _date=TextEditingController();
  bool isCheck=false;
  final _email=TextEditingController();
  final _fullName=TextEditingController();
  final _password=TextEditingController();
  final formKey1=GlobalKey<FormState>();
  late PickedFile _imageFile;
  final ImagePicker _picker=ImagePicker();
  void takePhoto(ImageSource source) async
  {
    final pickedFile=await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile=pickedFile!;
    });
  }

  Widget bottomSheet()
  {
    return Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Choose Profile Picture",style: GoogleFonts.poppins(fontSize: 18),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    takePhoto(ImageSource.gallery);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.pink.shade500,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10,
                              spreadRadius: 2
                          )
                        ],
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: [
                        Text("Choose From Gallery",style: GoogleFonts.poppins(
                            color: Colors.white
                        ),),
                        SizedBox(height: 5,),
                        Icon(Icons.image,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    takePhoto(ImageSource.camera);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.pink.shade500,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                              spreadRadius: 2
                          )
                        ],
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: [
                        Text("Choose From Camera",style: GoogleFonts.poppins(
                            color: Colors.white
                        ),),
                        SizedBox(height: 5,),
                        Icon(Icons.camera_alt,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            )


          ],
        )
    );
  }


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
                    margin: EdgeInsets.only(right: 20,left: 20,top: 30),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 10,

                          ),
                        ],

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/deadpool.jpg"),

                                  radius: 80,

                                ),
                              ),
                              Positioned(
                                bottom: 20,right: 25,
                                child: GestureDetector(
                                  onTap: ()
                                  {
                                    showModalBottomSheet(context: context, builder: (context) => bottomSheet(),);
                                  },

                                  child: Container(
                                    child: Icon(Icons.camera_alt_outlined,color: Colors.teal,),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text("Upload Your Photo",style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),),
                          SizedBox(
                            height: 15,
                          ),
                          Form(child: Column(
                            children: [
                              TextFormField(
                                validator: (value)
                                {
                                  if(value==null || value==" " || value.isEmpty)
                                  {
                                    return "Fill the full Name filed";
                                  }
                                },
                                controller: _fullName,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  label: Text("Full Name",style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value)
                                {
                                  if(value==null || value==" " || value.isEmpty)
                                  {
                                    return "Fill the Email filed";
                                  }
                                },
                                controller: _email,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  label: Text("Email",style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                validator: (value1)
                                {
                                  if(value1==null || value1==" " || value1.isEmpty)
                                  {
                                    return "Fill the Date filed";
                                  }
                                },
                                controller: _date,
                                onTap: ()
                                async {
                                  DateTime? pickeddate=await
                                  showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025));
                                  if(pickeddate!=null)
                                  {
                                    setState(() {
                                      _date.text=DateFormat('yyyy-MM-dd').format(pickeddate);
                                    });
                                  }
                                },

                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  label: Text("Date Of Birth",style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: _password,
                                keyboardType: TextInputType.text,
                                validator: (value)
                                {
                                  if(value==null || value==" " || value.isEmpty)
                                  {
                                    return "Fill the password filed";
                                  }
                                },
                                obscureText: true,
                                obscuringCharacter: "*",
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  label: Text("Password",style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: Colors.pink,
                                      value: isCheck, onChanged: (check)
                                  {
                                    setState(() {
                                      isCheck=check!;

                                    });

                                  }

                                  ),
                                  SizedBox(width: 15,),
                                  Text("I agree with Terms & Condition")

                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 200,
                                height: 40,

                                child: ElevatedButton(onPressed: isCheck?(){
                                  // if(formKey1.currentState!.validate())
                                  //   {
                                  //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));
                                  //   }
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));

                                }:null,
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                                  ),
                                  child: GestureDetector(
                                    onTap: ()
                                    {
                                      Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: myHome()));
                                    },
                                    child: Text("SIGN ME UP!",style: GoogleFonts.poppins(
                                      fontSize: 18,
                                    ),),
                                  ),

                                ),
                              ),
                              SizedBox(
                                height: 30,
                              )

                            ],
                          )),


                        ],
                      ),
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