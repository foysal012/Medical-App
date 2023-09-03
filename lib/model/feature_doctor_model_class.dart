import 'package:flutter/material.dart';

class FeatureDoctorModelClass{

  String? imgurl;
  String? name;
  String? position;
  String? rating;
  String? ratingNo;
  IconData? isfavourite;

  FeatureDoctorModelClass({this.imgurl, this.name, this.position, this.rating, this.ratingNo, this.isfavourite});

  static final listofFeatureDoctor = [

    FeatureDoctorModelClass(
      imgurl: "https://www.myclinic.ie/images/banner_gp.png",
      name: "Dr. Fazle Rabbi",
      position: "\$22.00/hours",
      rating: "✴",
      ratingNo: "3.7",
      isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://www.onlineshs.com/wp-content/uploads/2022/12/shutterstock_1901822248-1-1.png",
      name: "Dr. Kazi Fahad",
        position: "\$25.00/hours",
        rating: "✴",
        ratingNo: "3.8",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://s3-eu-west-1.amazonaws.com/intercare-web-public/wysiwyg-uploads%2F1580196666465-doctor.jpg",
      name: "Dr. Foysal",
        position: "\$28.00/hours",
        rating: "✴",
        ratingNo: "3.9",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://thumbs.dreamstime.com/b/smiling-female-doctor-holding-medical-records-lab-coat-her-office-clipboard-looking-camera-56673035.jpg",
      name: "Dr. Rahul",
        position: "\$29.00/hours",
        rating: "✴",
        ratingNo: "4.1",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://yt3.googleusercontent.com/ytc/AOPolaSw9TfEPjWHVnvMsBBSHUrDFgwwQd5MpSIn7kBNKA=s900-c-k-c0x00ffffff-no-rj",
      name: "Dr. Nadim",
        position: "\$27.00/hours",
        rating: "✴",
        ratingNo: "3.1",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://www.squarehospital.com/storage/images/1674367212.png",
      name: "Dr. Nahid",
        position: "\$26.00/hours",
        rating: "✴",
        ratingNo: "4.3",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://s3.ap-southeast-2.amazonaws.com/cdn.basscoastskindoctors.com.au/wp-content/uploads/2021/11/30115724/What-is-a-skin-doctor-and-how-can-they-treat-my-skin-HERO.jpg",
      name: "Dr. Tabir",
        position: "\$23.00/hours",
        rating: "✴",
        ratingNo: "4.0",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://aonanghospital.com/upload/doctor-44.png",
      name: "Dr. Abir",
        position: "\$21.00/hours",
        rating: "✴",
        ratingNo: "3.2",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.webp?b=1&s=170667a&w=0&k=20&c=8CebFLF4PFnt9JYJznGhYoOQxcyHLVpTGVfkvEsZd2Q=",
      name: "Dr. Alamin",
        position: "\$25.00/hours",
        rating: "✴",
        ratingNo: "4.5",
        isfavourite: Icons.favorite_outlined
    ),
    FeatureDoctorModelClass(
      imgurl: "https://www.woodlandshospital.in/images/doctor-img/Soutik-Panda-New1.jpg",
      name: "Dr. Rana",
        position: "\$33.00/hours",
        rating: "✴",
        ratingNo: "4.7",
        isfavourite: Icons.favorite_outlined
    ),

  ];
}