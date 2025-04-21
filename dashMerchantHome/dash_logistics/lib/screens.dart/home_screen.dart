// import 'package:dash_logistics/screens.dart/orders.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   // Hardcoded dashboard data with updated chart data
//   final Map<String, dynamic> dashboardData = {
//     'totalOrders': 86,
//     'totalCOD': 265919,
//     'totalRTV': 0,
//     'deliveryCharge': 8375,
//     'pendingCOD': 237544,
//     'lastCODPayment': 500,
//     'todaysOrders': 8,
//     'todaysDelivered': 5,
//     'todaysRescheduled': 2,
//     'todaysCancellation': 1,
//     'openTickets': 0,
//     // Data for Daily Order Status
//     'dailyOrderStatus': [
//       {'date': '2-24', 'value': 5},
//       {'date': '2-27', 'value': 15},
//       {'date': '2-28', 'value': 10},
//       {'date': '3-07', 'value': 20},
//       {'date': '3-10', 'value': 5},
//       {'date': '3-19', 'value': 10},
//       {'date': '3-20', 'value': 5},
//       {'date': '3-25', 'value': 2},
//       {'date': '3-26', 'value': 1},
//       {'date': '3-27', 'value': 0},
//     ],
//     // Data for Orders Delivered
//     'ordersDelivered': [
//       {'date': '2-16', 'value': 2},
//       {'date': '2-17', 'value': 5},
//       {'date': '2-18', 'value': 0},
//       {'date': '2-19', 'value': 4},
//       {'date': '2-20', 'value': 1},
//       {'date': '2-21', 'value': 8},
//       {'date': '2-22', 'value': 15},
//     ],
//     // Station Order Status
//     'stationOrderStatus': {'insideValley': 71.33, 'outsideValley': 28.67},
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Expanded to constrain the SingleChildScrollView to the available space
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Tracking Section with Red Container and Overlapping Cards
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         // Red Container with Border Radius on Bottom Corners
//                         Container(
//                           height: 150, // Define a fixed height for the red container
//                           padding: const EdgeInsets.all(16),
//                           decoration: const BoxDecoration(
//                             color: AppColors.primaryColor,
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(20),
//                               bottomRight: Radius.circular(20),
//                             ),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "Let's track your package",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),


//           Row(
//   children: [
//     Expanded(
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: 'Enter Tracking / Phone',
//           prefixIcon: Icon(Icons.search),
//           filled: true,
//           fillColor: Colors.white,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide.none,
//           ),
//         ),
//       ),
//     ),
//     SizedBox(width: 10),
//     Row(
//       children: [
        
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             shape: BoxShape.circle,
//           ),
//           child: IconButton(
//             icon: Icon(Icons.qr_code_scanner, color: Colors.red),
//             onPressed: () {},
//           ),
//         ),
//       ],
//     ),
//   ],
// )
//                             ],
//                           ),
//                         ),
//                         // Cards for Rates, Pick Up, Search, and History
//                         Positioned(
//                           left: 16,
//                           right: 16,
//                           top: 110, // Position cards to overlap the red container
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               _buildActionCard(Icons.attach_money, "Rates",(){}),
//                               _buildActionCard(Icons.local_shipping, "Pick Up",(){}),
//                               _buildActionCard(Icons.search, "Search",(){Navigator.push(context, MaterialPageRoute(builder: (context) => OrdersScreen(),));}),
//                               _buildActionCard(Icons.history, "History",(){}),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 50), // Space to ensure cards are fully visible

//                     // Dashboard Data
//                     _buildDashboardData(context, dashboardData),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.notifications), label: "Alerts"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person), label: "Account"),
//         ],
//         type: BottomNavigationBarType.fixed, // Ensure all items are visible
//         selectedItemColor:AppColors.primaryColor, // Highlight selected item
//         unselectedItemColor: Colors.grey, // Color for unselected items
//         backgroundColor: Colors.white, // Background color for the bar
//         elevation: 8, // Add shadow for better visibility
//       ),
//     );
//   }

//   // Method to build cards for Rates, Pick Up, Search, and History
// Widget _buildActionCard(IconData icon, String label, VoidCallback onPressed) {
//   return InkWell(
//     onTap: onPressed,
//     borderRadius: BorderRadius.circular(10), // To match the Card's border radius
//     child: Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Container(
//         width: 70,
//         height: 80,
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: Colors.black, size: 30),
//             const SizedBox(height: 4),
//             Text(
//               label,
//               style: const TextStyle(fontSize: 12, color: Colors.black),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

//   Widget _buildDashboardData(BuildContext context, Map<String, dynamic> data) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // COD Section
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Text(
//             "COD",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.dashBlue),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _buildStatCard("COD", "${data['totalOrders']}", Colors.black),
//                       _buildStatCard("TOTAL COD", "${data['totalCOD']}", Colors.black),
//                       _buildStatCard("TOTAL RTV", "${data['totalRTV']}", Colors.black),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _buildStatCard("DELIVERY CHARGE", "${data['deliveryCharge']}", Colors.black),
//                       _buildStatCard("PENDING COD", "${data['pendingCOD']}", Colors.black),
//                       _buildStatCard("LAST COD PAYMENT", "${data['lastCODPayment']}", Colors.black),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         // Orders Section
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Text(
//             "Orders",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.dashBlue),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             elevation: 2,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _buildStatCard("Today's Orders", "${data['todaysOrders']}", Colors.black),
//                       _buildStatCard("Today's Delivered", "${data['todaysDelivered']}", Colors.black),
//                       _buildStatCard("Today's Rescheduled", "${data['todaysRescheduled']}", Colors.black),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       _buildStatCard("Today's Cancellation", "${data['todaysCancellation']}", Colors.black),
//                       _buildStatCard("Open Tickets", "${data['openTickets']}", Colors.black),
//                       const SizedBox(width: 95), // Updated to match stat card width
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         // Daily Order Status Chart
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Text(
//             "Daily Order Status",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.dashBlue),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SizedBox(
//                 height: 200,
//                 child: LineChart(
//                   LineChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       bottomTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 30,
//                           getTitlesWidget: (value, meta) {
//                             final dates = data['dailyOrderStatus'].map((e) => e['date']).toList();
//                             if (value.toInt() >= 0 && value.toInt() < dates.length) {
//                               return Padding(
//                                 padding: const EdgeInsets.only(top: 8.0),
//                                 child: Text(
//                                   dates[value.toInt()],
//                                   style: const TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               );
//                             }
//                             return const Text('');
//                           },
//                         ),
//                       ),
//                       leftTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 40,
//                           getTitlesWidget: (value, meta) {
//                             return Text(
//                               value.toInt().toString(),
//                               style: const TextStyle(
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                       topTitles: AxisTitles(
//                         sideTitles: SideTitles(showTitles: false),
//                       ),
//                       rightTitles: AxisTitles(
//                         sideTitles: SideTitles(showTitles: false),
//                       ),
//                     ),
//                     borderData: FlBorderData(show: false),
//                     lineBarsData: [
//                       LineChartBarData(
//                         spots: List.generate(
//                           data['dailyOrderStatus'].length,
//                           (index) => FlSpot(
//                             index.toDouble(),
//                             data['dailyOrderStatus'][index]['value'].toDouble(),
//                           ),
//                         ),
//                         isCurved: true,
//                         color: Colors.blueAccent,
//                         dotData: FlDotData(show: true),
//                         belowBarData: BarAreaData(show: false),
//                         dashArray: [2, 2], // Dashed line
//                       ),
//                     ],
//                     minY: 0,
//                     maxY: 25,
//                     backgroundColor: Colors.grey[100],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         // Orders Delivered Chart
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Text(
//             "Orders Delivered",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.dashBlue),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SizedBox(
//                 height: 200,
//                 child: BarChart(
//                   BarChartData(
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       bottomTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 30,
//                           getTitlesWidget: (value, meta) {
//                             final dates = data['ordersDelivered'].map((e) => e['date']).toList();
//                             if (value.toInt() >= 0 && value.toInt() < dates.length) {
//                               return Padding(
//                                 padding: const EdgeInsets.only(top: 8.0),
//                                 child: Text(
//                                   dates[value.toInt()],
//                                   style: const TextStyle(
//                                     fontSize: 10,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               );
//                             }
//                             return const Text('');
//                           },
//                         ),
//                       ),
//                       leftTitles: AxisTitles(
//                         sideTitles: SideTitles(
//                           showTitles: true,
//                           reservedSize: 40,
//                           getTitlesWidget: (value, meta) {
//                             return Text(
//                               value.toInt().toString(),
//                               style: const TextStyle(
//                                 fontSize: 12,
//                                 color: Colors.black,
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                       topTitles: AxisTitles(
//                         sideTitles: SideTitles(showTitles: false),
//                       ),
//                       rightTitles: AxisTitles(
//                         sideTitles: SideTitles(showTitles: false),
//                       ),
//                     ),
//                     borderData: FlBorderData(show: false),
//                     barGroups: List.generate(
//                       data['ordersDelivered'].length,
//                       (index) => BarChartGroupData(
//                         x: index,
//                         barRods: [
//                           BarChartRodData(
//                             toY: data['ordersDelivered'][index]['value'].toDouble(),
//                             color: Colors.blueAccent,
//                             width: 8,
//                             borderRadius: BorderRadius.zero,
//                           ),
//                         ],
//                       ),
//                     ),
//                     minY: 0,
//                     maxY: 20,
//                     backgroundColor: Colors.grey[100],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         // Station Order Status Chart
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Text(
//             "Station Order Status (%)",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: AppColors.dashBlue),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 200,
//                     child: PieChart(
//                       PieChartData(
//                         sections: [
//                           PieChartSectionData(
//                             value: data['stationOrderStatus']['insideValley'],
//                             title: "${data['stationOrderStatus']['insideValley']}%",
//                             color: Colors.blue,
//                             radius: 50,
//                             titleStyle: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           PieChartSectionData(
//                             value: data['stationOrderStatus']['outsideValley'],
//                             title: "${data['stationOrderStatus']['outsideValley']}%",
//                             color: Colors.pink,
//                             radius: 50,
//                             titleStyle: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                         centerSpaceRadius: 40,
//                         sectionsSpace: 0,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   // Legend
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             width: 12,
//                             height: 12,
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.pink,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           const Text("inside valley"),
//                         ],
//                       ),
//                       const SizedBox(width: 20),
//                       Row(
//                         children: [
//                           Container(
//                             width: 12,
//                             height: 12,
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.blue,
//                             ),
//                           ),
//                           const SizedBox(width: 5),
//                           const Text("outside valley"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         // Special Offer
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             color: Colors.green,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                    Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "SPECIAL OFFER",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       Text(
//                         "50% OFF On First ",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                         Text(
//                         "Online Payment",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "UNTIL JANUARY 2025",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                          Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Text(
//                       "50%",
//                       style: TextStyle(
//                         color: Colors.green,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
            
//                 ],
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 16), // Add some padding at the bottom
//       ],
//     );
//   }

//   // Stat card method
//   Widget _buildStatCard(String title, String value, Color color) {
//     return Container(
//       width: 95, // Fixed width for uniformity
//       height: 90, // Fixed height for uniformity
//       padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//         border: Border.all(
//           color: color.withOpacity(0.2),
//           width: 1,
//         ),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: color,
//             ),
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 4),
//           Flexible(
//             child: Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//                 fontWeight: FontWeight.w500,
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               softWrap: true,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }











import 'package:dash_logistics/screens.dart/order_form.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:dash_logistics/screens.dart/orders.dart';

import 'package:dash_logistics/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of screens to display in the IndexedStack
  final List<Widget> _screens = [
     HomeContent(), // Home screen content (extracted below)
     OrdersScreen(),
     OrderFormScreen(),
     OrdersScreen(),
     OrdersScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
      //     BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
      //     BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Alerts"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: AppColors.primaryColor,
      //   unselectedItemColor: AppColors.grey,
      //   backgroundColor: AppColors.white,
      //   elevation: 8,
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      // ),

        bottomNavigationBar: BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.list), label: "Orders"),
      BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Alerts"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
    ],
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.primaryColor,
    unselectedItemColor: AppColors.grey,
    backgroundColor: AppColors.white,
    elevation: 8,
    currentIndex: _selectedIndex,
    onTap: (index) {
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderFormScreen()),
        );
        // Add button action
      } else {
        _onItemTapped(index);
      }
    },
  ),
  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.red,
    child: Icon(Icons.add, color: Colors.white),
    shape: CircleBorder(),  // Ensure the button is a perfect circle
    onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderFormScreen()),
        );
    },
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// Extract the HomeScreen content into a separate widget
class HomeContent extends StatelessWidget {
   HomeContent({super.key});

  final Map<String, dynamic> dashboardData = {
    'totalOrders': 86,
    'totalCOD': 265919,
    'totalRTV': 0,
    'deliveryCharge': 8375,
    'pendingCOD': 237544,
    'lastCODPayment': 500,
    'todaysOrders': 8,
    'todaysDelivered': 5,
    'todaysRescheduled': 2,
    'todaysCancellation': 1,
    'openTickets': 0,
    'dailyOrderStatus': [
      {'date': '2-24', 'value': 5},
      {'date': '2-27', 'value': 15},
      {'date': '2-28', 'value': 10},
      {'date': '3-07', 'value': 20},
      {'date': '3-10', 'value': 5},
      {'date': '3-19', 'value': 10},
      {'date': '3-20', 'value': 5},
      {'date': '3-25', 'value': 2},
      {'date': '3-26', 'value': 1},
      {'date': '3-27', 'value': 0},
    ],
    'ordersDelivered': [
      {'date': '2-16', 'value': 2},
      {'date': '2-17', 'value': 5},
      {'date': '2-18', 'value': 0},
      {'date': '2-19', 'value': 4},
      {'date': '2-20', 'value': 1},
      {'date': '2-21', 'value': 8},
      {'date': '2-22', 'value': 15},
    ],
    'stationOrderStatus': {'insideValley': 71.33, 'outsideValley': 28.67},
  };



  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
             // color: AppColors.dashLigtGray,
               color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Let's track your package",
                              style: TextStyle(
                                color: AppColors.whiteCol,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
              
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Tracking / Phone',
                                      prefixIcon: const Icon(Icons.search),
                                      filled: true,
                                      fillColor: AppColors.whiteCol,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: AppColors.whiteCol,
                                        shape: BoxShape.circle,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.qr_code_scanner, color: AppColors.redColor),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        top: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildActionCard(Icons.attach_money, "Rates", () {}),
                            _buildActionCard(Icons.local_shipping, "Pick Up", () {}),
                            _buildActionCard(Icons.search, "Search", () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OrdersScreen()),
                              );
                            }),
                            _buildActionCard(Icons.history, "History", () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  _buildDashboardData(context, dashboardData),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}






  Widget _buildActionCard(IconData icon, String label, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(10),
    child: Card(   color: AppColors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 70,
        height: 80,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.black, size: 30),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: AppColors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}



Widget _buildDashboardData(BuildContext context, Map<String, dynamic> data) {
  return Container(
   // color: AppColors.dashLigtGray,
    color: Colors.grey[100],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
Padding(
   padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
  child: Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "COD",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dashBlue,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard("Total Orders", "${data['totalOrders']}", AppColors.black),
                _buildStatCard("TOTAL COD", "${data['totalCOD']}", AppColors.black),
                _buildStatCard("TOTAL RTV", "${data['totalRTV']}", AppColors.black),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard("DELIVERY CHARGE", "${data['deliveryCharge']}", AppColors.black),
                _buildStatCard("PENDING COD", "${data['pendingCOD']}", AppColors.black),
                _buildStatCard("LAST COD PAYMENT", "${data['lastCODPayment']}", AppColors.black),
              ],
            ),
          ],
        ),
      ),
    ),
  ),
),
   

Padding(
  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
  child: Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dashBlue,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard("Today's Orders", "${data['todaysOrders']}", AppColors.black),
                _buildStatCard("Today's Delivered", "${data['todaysDelivered']}", AppColors.black),
                _buildStatCard("Today's Rescheduled", "${data['todaysRescheduled']}", AppColors.black),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard("Today's Cancellation", "${data['todaysCancellation']}", AppColors.black),
                _buildStatCard("Open Tickets", "${data['openTickets']}", AppColors.black),
                const SizedBox(width: 95),
              ],
            ),
          ],
        ),
      ),
    ),
  ),
),



    
Padding(
  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
  child: Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Daily Order Status",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.dashBlue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) {
                          final dates = data['dailyOrderStatus'].map((e) => e['date']).toList();
                          if (value.toInt() >= 0 && value.toInt() < dates.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                dates[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: AppColors.black,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(
                        data['dailyOrderStatus'].length,
                        (index) => FlSpot(
                          index.toDouble(),
                          data['dailyOrderStatus'][index]['value'].toDouble(),
                        ),
                      ),
                      isCurved: true,
                      color: AppColors.blueAccent,
                      dotData: const FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                      dashArray: [2, 2],
                    ),
                  ],
                  minY: 0,
                  maxY: 25,
                  backgroundColor: AppColors.grey[100],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),
      
Padding(
  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
  child: Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Orders Delivered",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.dashBlue,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) {
                          final dates = data['ordersDelivered'].map((e) => e['date']).toList();
                          if (value.toInt() >= 0 && value.toInt() < dates.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                dates[value.toInt()],
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: AppColors.black,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toInt().toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.black,
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: List.generate(
                    data['ordersDelivered'].length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: data['ordersDelivered'][index]['value'].toDouble(),
                          color: AppColors.blueAccent,
                          width: 8,
                          borderRadius: BorderRadius.zero,
                        ),
                      ],
                    ),
                  ),
                  minY: 0,
                  maxY: 20,
                  backgroundColor: AppColors.grey[100],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),
  


     Padding(
 padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
  child: Card(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: const Text(
                "Station Order Status (%)",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dashBlue,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.pinkRedGra,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("inside valley"),
                  ],
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.blueGra,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text("outside valley"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: data['stationOrderStatus']['insideValley'],
                      title: "${data['stationOrderStatus']['insideValley']}%",
                      color: AppColors.blueGra,
                      radius: 50,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteCol,
                      ),
                    ),
                    PieChartSectionData(
                      value: data['stationOrderStatus']['outsideValley'],
                      title: "${data['stationOrderStatus']['outsideValley']}%",
                      color: AppColors.pinkRedGra,
                      radius: 50,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteCol,
                      ),
                    ),
                  ],
                  centerSpaceRadius: 40,
                  sectionsSpace: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),
        // Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Card(
        //     color: AppColors.green,
        //     child: Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               const Text(
        //                 "SPECIAL OFFER",
        //                 style: TextStyle(color: AppColors.whiteCol),
        //               ),
        //               const Text(
        //                 "50% OFF On First ",
        //                 style: TextStyle(
        //                   color: AppColors.whiteCol,
        //                   fontSize: 22,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               const Text(
        //                 "Online Payment",
        //                 style: TextStyle(
        //                   color: AppColors.whiteCol,
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               const Text(
        //                 "UNTIL JANUARY 2025",
        //                 style: TextStyle(color: AppColors.whiteCol),
        //               ),
        //             ],
        //           ),
        //           Container(
        //             padding: const EdgeInsets.all(16),
        //             decoration: const BoxDecoration(
        //               color: AppColors.whiteCol,
        //               shape: BoxShape.circle,
        //             ),
        //             child: const Text(
        //               "50%",
        //               style: TextStyle(
        //                 color: AppColors.green,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
                width: 370, // Adjust width as needed
                height: 150, // Adjust height as needed
                decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              AppColors.greenC, // Using greenC for the gradient start
              AppColors.darkGreen, // Using darkGreen for the gradient end
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
                ),
                child: Stack(
          children: [
            // Text content on the left
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Special Offers',
                    style: TextStyle(
                      color: AppColors.whiteCol,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '50% Off On First\nOnline Payment',
                    style: TextStyle(
                      color: AppColors.whiteCol,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Until the end of January 2025',
                    style: TextStyle(
                      color: AppColors.whiteCol.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            // Red circle with "50%" on the right
            Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.redColor, // Using redColor for the circle
                  ),
                  child: Center(
                    child: Text(
                      '50%',
                      style: TextStyle(
                        color: AppColors.whiteCol,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
                ),
              ),
        ),
        const SizedBox(height: 16),
      ],
    ),
  );
}



  Widget _buildStatCard(String title, String value, Color color) {
  return Container(
    width: 95,
    height: 90,
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    // decoration: BoxDecoration(
    //   color: AppColors.dashLigtGray,
    //   borderRadius: BorderRadius.circular(10),
    //   boxShadow: [
    //     BoxShadow(
    //       color: AppColors.grey.withOpacity(0.2),
    //       spreadRadius: 2,
    //       blurRadius: 5,
    //       offset: const Offset(0, 3),
    //     ),
    //   ],
    //   border: Border.all(
    //     color: color.withOpacity(0.2),
    //     width: 1,
    //   ),
    // ),

     decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    ),
  );
}
}
























