import 'package:e_sante/Toxicite_cutanee/Ongles/Ongles_advices.dart';
import 'package:flutter/material.dart';

class Ongles_hopital extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: WidthScreen,
            height: HeightScreen/3.8,
            color: Colors.pinkAccent[100],
            child: Center(
              child: Text(
                'Conduite a suivre',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ),
          Container(
            width: WidthScreen,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20,top: HeightScreen/5),
                    child: Icon(
                      Icons.warning_amber_outlined,
                      color: Colors.red,
                      size: 70,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    child: Text(
                      "Vous devez s'orienter a l'hopital au plus tot possible",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60,),

                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent[100],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Ongles_advices()));

                    },
                    child: Text(
                      'Continuer',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
