import 'package:flutter/material.dart';

class BookingDoctor2ModelClass{

  String? imgurl;
  String? Patientname;

  BookingDoctor2ModelClass({this.imgurl, this.Patientname});

  static List<BookingDoctor2ModelClass> listofBookingDoctor = [
    BookingDoctor2ModelClass(
      imgurl: "https://media.istockphoto.com/id/966638378/photo/portrait-of-latino-man-smiling.jpg?s=612x612&w=0&k=20&c=ak9fiJm6VhexIHpNrQaeEi0wC3N34P3aRK_mqyGevb8=",
      Patientname: "Myself"
    ),

    BookingDoctor2ModelClass(
        imgurl: "https://images.unsplash.com/photo-1600174471006-7fd4a8d3eb64?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kaWFuJTIwY2hpbGR8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
        Patientname: "Child"
    ),

    BookingDoctor2ModelClass(
        imgurl: "https://media.istockphoto.com/id/1124651230/photo/beautiful-brunette-woman.jpg?s=612x612&w=0&k=20&c=U01ZdYXakQmEZ01iA-PHoZxqSxzm6U5PaR0hiZlIhkQ=",
        Patientname: "Wife"
    ),

    BookingDoctor2ModelClass(
        imgurl: "https://i.insider.com/637cdb41da9aea00181d9b54?width=700",
        Patientname: "Mother"
    ),

    BookingDoctor2ModelClass(
        imgurl: "https://gray-wtvg-prod.cdn.arcpublishing.com/resizer/_C5G44IZnxsTb3vwHG-dxgE8moQ=/800x800/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/gray/RSI6KLZKXNNXNPVP53XQMXZG5I.jpg",
        Patientname: "Father"
    ),
  ];
}