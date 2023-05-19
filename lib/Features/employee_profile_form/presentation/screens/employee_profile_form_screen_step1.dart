import 'package:fingerPrint/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/custom_dot_stepper.dart';
import '../widgets/employee_form_step1.dart';

class EmployeeProfileFormScreenStep1 extends StatelessWidget {
  const EmployeeProfileFormScreenStep1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(child:            CustomAppBar(), preferredSize: screenSize*.1),
      backgroundColor: Colors.white,
      body: 
    ListView(
        children: [

          SizedBox(
           // height: screenSize.height*.8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                        Text(
                            "نموذج تعريف موظف",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                         
                          ),   CustomDotStepper(isActive: false),
                   //   SizedBox(height: screenSize.height*.1,),
                       
                         
                      ]),
                    )
                
                ],
              ),
            ),
          ),
         EmployeeProfileStep1(),  ],
      ),
    
    );
  }
}