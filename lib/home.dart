import 'package:flutter/material.dart';
//abdebenkoula **** 29/09/2021
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var search_bool = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
                gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color(0xff0060ff), Color(0xff00c0ff)]),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('')),
                search_bool == 1
                    ? const Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    : Expanded(
                        child: Container(
                          height: 40,
                          child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: true,
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(20.0),
      ),
                            filled: true,
                            hintText: "Search..",
                            hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                            
                            // border: InputBorder.none,
                          ),
                          maxLines: 1,
                      ),
                        )),
                InkWell(
                  onTap: () {
                    if (search_bool == 1) {
                      setState(() {
                        search_bool = 2;
                      });
                    } else if (search_bool == 2) {
                      setState(() {
                        search_bool = 1;
                      });
                    }
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: const Icon(
                        Icons.search_sharp,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
