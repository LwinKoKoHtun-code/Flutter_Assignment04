import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StackAssignment extends StatefulWidget {
  const StackAssignment({Key? key}) : super(key: key);

  @override
  State<StackAssignment> createState() => _StackAssignmentState();
}

TextEditingController? _txtctrlName = TextEditingController();
final Uri _url = Uri.parse('https://google.com/');
_launchURL() async {
  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

class _StackAssignmentState extends State<StackAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment 4'),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        //alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: double.infinity,
            color: Colors.grey[300],
          ),
          Container(
            width: double.infinity,
            height: 150,
            //color: Colors.green[300],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/christmas.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          // Positioned(
          //   width: 100,
          //   height: 100,
          //   bottom: -50,
          //   child: Container(
          //     color: Colors.blue[300],
          //   ),
          // ),
          Positioned(
            child: Container(
              //color: Colors.blue[300],
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 100, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/avatar01.jpg'),
                      backgroundColor: Colors.yellow,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      controller: _txtctrlName,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      controller: _txtctrlName,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      controller: _txtctrlName,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Note',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      controller: _txtctrlName,
                      maxLines: 4, //or null
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchURL(),
                      child: Text(
                        'Visit our website',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.orange[300]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
