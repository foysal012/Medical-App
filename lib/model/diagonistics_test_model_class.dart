import 'package:flutter/material.dart';

class DiagonisticsTestModelClass{

  String? heading;
  String? subheading;
  String? patientcount;
  String? imgurl;
  String? price1;
  String? price2;
  String? price3;
  String? description;

  DiagonisticsTestModelClass(
      {this.heading,
      this.subheading,
      this.patientcount,
      this.imgurl,
      this.price1,
      this.price2,
      this.price3,
      this.description});

  static List<DiagonisticsTestModelClass> listofDiagonisticsTest = [
    DiagonisticsTestModelClass(
      imgurl: "https://o-lab.in/uploadfile/blog/O-Lab_Health_Test_Package.jpg",
      heading: "Advanced Young Indian Health Checkup",
      subheading: "Ideal for individuals aged 21-40 years",
      patientcount: "69 tests included",
      price1: "\$358",
      price2: "\$330",
      price3: "\$35% off",
      description: "+ 10% Health cashback T&C"
    ),
    DiagonisticsTestModelClass(
        imgurl: "https://s3-ap-south-1.amazonaws.com/healthcheckup/2021/01/20121340/shutterstock_404090734-1568x1045-1.jpg",
        heading: "Working Women's Health Checkup",
        subheading: "Ideal for individuals aged 21-40 years",
        patientcount: "119 tests included",
        price1: "\$387",
        price2: "\$345",
        price3: "\$35% off",
        description: "+ 10% Health cashback T&C"
    ),
    DiagonisticsTestModelClass(
        imgurl: "https://www.asterlabs.in/sites/default/files/2021-12/clinical-pathology_0.jpg",
        heading: "Active Professional Health Checkup",
        subheading: "Ideal for individuals aged 21-40 years",
        patientcount: "100 tests included",
        price1: "\$457",
        price2: "\$411",
        price3: "\$35% off",
        description: "+ 10% Health cashback T&C"
    ),
    DiagonisticsTestModelClass(
        imgurl: "https://o-lab.in/uploadfile/blog/O-Lab_Health_Test_Package.jpg",
        heading: "Advanced Young Indian Health Checkup",
        subheading: "Ideal for individuals aged 21-40 years",
        patientcount: "69 tests included",
        price1: "\$358",
        price2: "\$330",
        price3: "\$35% off",
        description: "+ 10% Health cashback T&C"
    ),
    DiagonisticsTestModelClass(
        imgurl: "https://s3-ap-south-1.amazonaws.com/healthcheckup/2021/01/20121340/shutterstock_404090734-1568x1045-1.jpg",
        heading: "Working Women's Health Checkup",
        subheading: "Ideal for individuals aged 21-40 years",
        patientcount: "119 tests included",
        price1: "\$387",
        price2: "\$345",
        price3: "\$35% off",
        description: "+ 10% Health cashback T&C"
    ),
    DiagonisticsTestModelClass(
        imgurl: "https://www.asterlabs.in/sites/default/files/2021-12/clinical-pathology_0.jpg",
        heading: "Active Professional Health Checkup",
        subheading: "Ideal for individuals aged 21-40 years",
        patientcount: "100 tests included",
        price1: "\$457",
        price2: "\$411",
        price3: "\$35% off",
        description: "+ 10% Health cashback T&C"
    ),
  ];
}