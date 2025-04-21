// import 'package:dash_logistics/screens.dart/order_form.dart';
// import 'package:dash_logistics/screens.dart/order_form_dialog.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/material.dart';

// class PendingOrdersScreen extends StatelessWidget {
//   const PendingOrdersScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.whiteCol, // White background
//       appBar: AppBar(
//         backgroundColor: AppColors.lightGrey, // White AppBar
//         elevation: 0, // No shadow for a flat look
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: AppColors.blueC, // Dark blue back arrow
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           'Pending Orders',
//           style: TextStyle(
//             color: AppColors.black, // Black title text
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // List of orders
//             Expanded(
//               child: ListView(
//                 children: const [
//                   OrderCard(
//                     name: 'Ravi Ojha',
//                     location: 'Baneshwor -> Chabhill',
//                   ),
//                   SizedBox(height: 16),
//                   OrderCard(
//                     name: 'Ram Rawal',
//                     location: 'Baneshwor -> Chabhill',
//                   ),
//                   SizedBox(height: 16),
//                   OrderCard(
//                     name: 'Basant Joshi',
//                     location: 'Baneshwor -> Chabhill',
//                   ),
//                 ],
//               ),
//             ),
//             // Send Request Button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.send,
//                   color: AppColors.whiteCol, // White icon
//                 ),
//                 label: Text(
//                   'Send Request',
//                   style: TextStyle(
//                     color: AppColors.whiteCol, // White text
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.primaryColor, // Red button
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OrderCard extends StatelessWidget {
//   final String name;
//   final String location;

//   const OrderCard({
//     super.key,
//     required this.name,
//     required this.location,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: AppColors.whiteCol, // White card background
//       elevation: 2, // Subtle shadow
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.darkGreyText, // Dark grey name
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   location,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: AppColors.greyC, // Grey location text
//                   ),
//                 ),
//               ],
//             ),
//             GestureDetector(
//               onTap: () {
//                 // Define your onTap behavior here
//                 Navigator.push(context, MaterialPageRoute(builder:(context) => OrderFormDialog()));
//               },
//               child: Icon(
//                 Icons.edit,
//                 color: AppColors.greyC, // Grey edit icon
//                 size: 20,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:dash_logistics/screens.dart/order_form.dart';
import 'package:dash_logistics/screens.dart/order_form_dialog.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:flutter/material.dart';

class PendingOrdersScreen extends StatelessWidget {
  const PendingOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteCol, // White background
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey, // White AppBar
        elevation: 0, // No shadow for a flat look
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.blueC, // Dark blue back arrow
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pending Orders',
          style: TextStyle(
            color: AppColors.black, // Black title text
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // List of orders
            Expanded(
              child: ListView(
                children: const [
                  OrderCard(
                    name: 'Ravi Ojha',
                    location: 'Baneshwor -> Chabhill',
                  ),
                  SizedBox(height: 16),
                  OrderCard(
                    name: 'Ram Rawal',
                    location: 'Baneshwor -> Chabhill',
                  ),
                  SizedBox(height: 16),
                  OrderCard(
                    name: 'Basant Joshi',
                    location: 'Baneshwor -> Chabhill',
                  ),
                ],
              ),
            ),
            // Send Request Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: AppColors.whiteCol, // White icon
                ),
                label: Text(
                  'Send Request',
                  style: TextStyle(
                    color: AppColors.whiteCol, // White text
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor, // Red button
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String name;
  final String location;

  const OrderCard({
    super.key,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteCol, // White card background
      elevation: 2, // Subtle shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGreyText, // Dark grey name
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.greyC, // Grey location text
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.99,
                        child: OrderFormDialog(),
                      );
                  },
                );
              },
              child: Icon(
                Icons.edit,
                color: AppColors.greyC, // Grey edit icon
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}