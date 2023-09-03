import 'package:flutter/material.dart';

class PaymentPageScreen extends StatefulWidget {
   PaymentPageScreen({Key? key}) : super(key: key);




  @override
  State<PaymentPageScreen> createState() => _PaymentPageScreenState();
}

class _PaymentPageScreenState extends State<PaymentPageScreen> {


  List<String> _locations = [ "Bkash",
    "Rocket",
    "Nagad",
    "Upay",
    "VISACARD",
    "MASTERCARD"];

  String? _selectedLocation;

  TextEditingController numberController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController patientidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
    ),
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Colors.blueAccent.withOpacity(0.4),
    Colors.white.withOpacity(0.3),
    Colors.grey.withOpacity(0.3),
    Colors.greenAccent.withOpacity(0.7)
    ]
    )
    ),
        child: Column(
          children: [

            Row(
              children: [

                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Icon(Icons.arrow_back_ios, color: Colors.black,size: 18,)),
                  ),
                ),

                SizedBox(width: 40,),

                Text("Payment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 100,
            ),

            Text("Choose Payment Method"),

            SizedBox(height: 10,),

            DropdownButton(
              hint: Text('Please choose a method'), // Not necessary for Option 1
              value: _selectedLocation,
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: (){
               // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiagonisticsTestPageScreen2()));
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Payment Information"),
                    content: Container(
                      height: 400,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Account Number/Card Number"),

                          SizedBox(height: 3,),

                          TextFormField(
                            controller: numberController,
                            decoration: InputDecoration(
                              hintText: "01967543212/889765440987521"
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Pin"),

                          SizedBox(height: 3,),

                          TextFormField(
                            controller: pinController,
                            decoration: InputDecoration(
                                hintText: "************"
                            ),
                          ),

                          SizedBox(height: 10,),

                          Text("Patient Id"),

                          SizedBox(height: 3,),

                          TextFormField(
                            controller: patientidController,
                            decoration: InputDecoration(
                                hintText: "1022"
                            ),
                          ),

                          SizedBox(height: 20,),

                          InkWell(
                            onTap: (){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Payment Successfully done")));
                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text("Pay",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                });
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
        )
    );
  }
}
