import 'package:flutter/material.dart';

class MedicineOrderPageScreen3 extends StatefulWidget {
  const MedicineOrderPageScreen3({Key? key}) : super(key: key);

  @override
  State<MedicineOrderPageScreen3> createState() => _MedicineOrderPageScreen3State();
}

class _MedicineOrderPageScreen3State extends State<MedicineOrderPageScreen3> {

  TextEditingController searchController = TextEditingController();

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

              Text("Medicine orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22
                ),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: searchController,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.cancel_outlined),
                hintText: "Search......",
                border: InputBorder.none,
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.corporate_fare_rounded, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Guide to medicine",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                      ),

                      Text("Order",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.file_present_outlined, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Prescription related",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      Text("issues",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),


                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.add_shopping_cart, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Order status",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.delivery_dining, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Order delivery",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.payment, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Payments & Refunds",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.withOpacity(0.3),
                        ),
                        child: Center(child: Icon(Icons.keyboard_return, color: Colors.green,)),
                      ),

                      SizedBox(height: 4,),

                      Text("Order refunds",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],

            ),
          ),

          //Spacer(),

          SizedBox(height: 60,),

          Container(
            height: 4,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          SizedBox(height: 20,)


        ],
      ),
        ),
    );
  }
}
