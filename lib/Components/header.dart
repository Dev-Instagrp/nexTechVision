import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 100.0,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "nexTechVision",
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.0),
          ),
          SizedBox(
            width: 250.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              HeaderNav(text: "Home", isSelected: true),
              SizedBox(width: 40.0,),
              HeaderNav(text: "About us", isSelected: false),
              SizedBox(width: 40.0,),
              HeaderNav(text: "Services", isSelected: false),
              SizedBox(width: 40.0,),
              HeaderNav(text: "Contact us", isSelected: false),
              SizedBox(width: 40.0,),
              HeaderNav(text: "Our team", isSelected: false),
              SizedBox(width: 40.0,),
              HeaderNav(text: "Our portfolio", isSelected: false),
              SizedBox(width: 40.0,),
            ],
          ),
          SizedBox(
            width: 250.0,
          ),
          Row(
            children: [
              Text("Sign Up",
              style: GoogleFonts.nunito(
                fontSize: 13,
                color: Colors.white,
              ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                width: 1.0,
                height: 20.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text("Log In",
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String text;
  final bool isSelected;
  const HeaderNav({super.key, required this.text, required this.isSelected});

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text, style: GoogleFonts.nunito(fontSize: 13.0, color: Colors.white),),
        widget.isSelected ? SizedBox(height: 5.0,) : SizedBox(),
        widget.isSelected ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 2.0,
        ) : SizedBox(),
      ],
    );
  }
}

