// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/material.dart';

// class OrdersScreen extends StatefulWidget {
//   @override
//   _OrdersScreenState createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> {
//   // Sample data for orders
//   final List<Map<String, dynamic>> orders = [
//     {
//       'id': '#934858',
//       'status': 'Processing',
//       'statusColor': Colors.pink[100],
//       'statusTextColor': Colors.pink,
//       'origin': 'Los Angeles, CA',
//       'originDate': '23 Nov',
//       'originTime': '7:00 PM',
//       'destination': 'San Francisco, CA',
//       'destinationDate': '24 Nov',
//       'destinationTime': '10:00 AM',
//     },
//     {
//       'id': '#93749',
//       'status': 'Delivered',
//       'statusColor': Colors.green[100],
//       'statusTextColor': Colors.green,
//       'origin': 'Long Beach, CA',
//       'originDate': '11 Oct',
//       'originTime': '5:00 AM',
//       'destination': 'San Francisco, CA',
//       'destinationDate': '15 Oct',
//       'destinationTime': '6:00 PM',
//     },
//     {
//       'id': '#HKY945',
//       'status': 'Pending',
//       'statusColor': Colors.red[100],
//       'statusTextColor': Colors.red,
//       'origin': 'San Diego, CA',
//       'originDate': '5 Nov',
//       'originTime': '2:00 AM',
//       'destination': 'Oakland, CA',
//       'destinationDate': '6 Nov',
//       'destinationTime': '11:00 PM',
//     },
//     {
//       'id': '#9345J',
//       'status': 'Cancelled',
//       'statusColor': Colors.grey[200],
//       'statusTextColor': Colors.grey,
//       'origin': 'Pasadena, CA',
//       'originDate': '8 Nov',
//       'originTime': '11:00 AM',
//       'destination': 'Sacramento, CA',
//       'destinationDate': '9 Nov',
//       'destinationTime': '3:00 PM',
//     },
//   ];

//   String filter = 'ALL';
//   String searchQuery = '';
//   TextEditingController searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     searchController.addListener(() {
//       setState(() {
//         searchQuery = searchController.text;
//       });
//     });
//   }




// void showFilterPopup(BuildContext context) {
//   // Define the options for the dropdown menus
//   final List<String> locations = ['New York', 'Los Angeles', 'San Francisco', 'Chicago'];
//   final List<String> statuses = ['Processing', 'Delivered', 'Pending', 'Cancelled'];
//   final List<String> paymentTypes = ['Credit Card', 'PayPal', 'Cash on Delivery'];
//   final List<String> paymentStatuses = ['Paid', 'Unpaid', 'Pending'];

//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//         child: Container(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: DropdownButtonFormField(
//                       hint: Text('Select Location'),
//                       items: locations.map((location) {
//                         return DropdownMenuItem(
//                           value: location,
//                           child: Text(location),
//                         );
//                       }).toList(),
//                       onChanged: (value) {},
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'Keywords'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: DropdownButtonFormField(
//                       hint: Text('Select Status'),
//                       items: statuses.map((status) {
//                         return DropdownMenuItem(
//                           value: status,
//                           child: Text(status),
//                         );
//                       }).toList(),
//                       onChanged: (value) {},
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'Date Range'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'From Price'),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'To Price'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'From Weight'),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'To Weight'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'Tracking Code'),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: DropdownButtonFormField(
//                       hint: Text('Payment Type'),
//                       items: paymentTypes.map((type) {
//                         return DropdownMenuItem(
//                           value: type,
//                           child: Text(type),
//                         );
//                       }).toList(),
//                       onChanged: (value) {},
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: DropdownButtonFormField(
//                       hint: Text('Payment Status'),
//                       items: paymentStatuses.map((status) {
//                         return DropdownMenuItem(
//                           value: status,
//                           child: Text(status),
//                         );
//                       }).toList(),
//                       onChanged: (value) {},
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(hintText: 'Invoice Number'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                       onPressed: () {},
//                       child: Text('Export Excel', style: TextStyle(color: Colors.white)),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                       onPressed: () {},
//                       child: Text('Filter Orders', style: TextStyle(color: Colors.white)),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> filteredOrders = orders.where((order) {
//       switch (filter) {
//         case 'ALL':
//           return order['id']
//               .toString()
//               .toLowerCase()
//               .contains(searchQuery.toLowerCase());
//         case 'Delivered':
//         case 'Processing':
//         case 'Cancelled':
//         case 'Pending':
//           return order['status'] == filter &&
//               order['id']
//                   .toString()
//                   .toLowerCase()
//                   .contains(searchQuery.toLowerCase());
//         default:
//           return false;
//       }
//     }).toList();

//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: SafeArea(
//           child: AppBar(
//             backgroundColor: AppColors.white,
//            // leading: Icon(Icons.arrow_back),
//             title: Center(child: Text('Orders')),
//             actions: [
//               GestureDetector(
//                 onTap: () {
//                   showFilterPopup(context);
//                 },
//                 child: Icon(Icons.filter_list),
//               ),
//               SizedBox(width: 10),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           // Search Bar
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search orders...',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//               ),
//             ),
//           ),
//           // Suggestions
//           if (searchQuery.isNotEmpty)
//             Container(
//               height: 100,
//               child: ListView(
//                 children: filteredOrders.map((order) {
//                   return ListTile(
//                     title: Text(order['id']),
//                     onTap: () {
//                       setState(() {
//                         searchController.text = order['id'];
//                         searchQuery = ''; // Clear search query to remove suggestions
//                       });
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//           // Filter Tabs
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   FilterChip(
//                     label: Text('ALL'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'ALL';
//                       });
//                     },
//                     selected: filter == 'ALL',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Delivered'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Delivered';
//                       });
//                     },
//                     selected: filter == 'Delivered',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Processing'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Processing';
//                       });
//                     },
//                     selected: filter == 'Processing',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Cancelled'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Cancelled';
//                       });
//                     },
//                     selected: filter == 'Cancelled',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Pending'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Pending';
//                       });
//                     },
//                     selected: filter == 'Pending',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Orders List
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredOrders.length,
//               itemBuilder: (context, index) {
//                 final order = filteredOrders[index];
//                 return Card(
//                   margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Order ID: ${order['id']}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Icon(Icons.circle, color: Colors.black, size: 16),
//                                 SizedBox(width: 8),
//                                 Text(
//                                   '${order['origin']}',
//                                   style: TextStyle(fontSize: 14),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               '${order['originDate']}, ${order['originTime']}',
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Icon(Icons.location_pin, color: Colors.orange, size: 16),
//                                 SizedBox(width: 8),
//                                 Text(
//                                   '${order['destination']}',
//                                   style: TextStyle(fontSize: 14),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               '${order['destinationDate']}, ${order['destinationTime']}',
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                           decoration: BoxDecoration(
//                             color: order['statusColor'],
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             order['status'],
//                             style: TextStyle(
//                               color: order['statusTextColor'],
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';

// class OrdersScreen extends StatefulWidget {
//   @override
//   _OrdersScreenState createState() => _OrdersScreenState();
// }

// class _OrdersScreenState extends State<OrdersScreen> {
//   // Sample data for orders
//   final List<Map<String, dynamic>> orders = [
//     {
//       'id': '#934858',
//       'status': 'Processing',
//       'statusColor': Colors.pink[100],
//       'statusTextColor': Colors.pink,
//       'origin': 'Los Angeles, CA',
//       'originDate': '23 Nov',
//       'originTime': '7:00 PM',
//       'destination': 'San Francisco, CA',
//       'destinationDate': '24 Nov',
//       'destinationTime': '10:00 AM',
//     },
//     {
//       'id': '#93749',
//       'status': 'Delivered',
//       'statusColor': Colors.green[100],
//       'statusTextColor': Colors.green,
//       'origin': 'Long Beach, CA',
//       'originDate': '11 Oct',
//       'originTime': '5:00 AM',
//       'destination': 'San Francisco, CA',
//       'destinationDate': '15 Oct',
//       'destinationTime': '6:00 PM',
//     },
//     {
//       'id': '#HKY945',
//       'status': 'Pending',
//       'statusColor': Colors.red[100],
//       'statusTextColor': Colors.red,
//       'origin': 'San Diego, CA',
//       'originDate': '5 Nov',
//       'originTime': '2:00 AM',
//       'destination': 'Oakland, CA',
//       'destinationDate': '6 Nov',
//       'destinationTime': '11:00 PM',
//     },
//     {
//       'id': '#9345J',
//       'status': 'Cancelled',
//       'statusColor': Colors.grey[200],
//       'statusTextColor': Colors.grey,
//       'origin': 'Pasadena, CA',
//       'originDate': '8 Nov',
//       'originTime': '11:00 AM',
//       'destination': 'Sacramento, CA',
//       'destinationDate': '9 Nov',
//       'destinationTime': '3:00 PM',
//     },
//   ];

//   String filter = 'ALL';
//   String searchQuery = '';
//   TextEditingController searchController = TextEditingController();
//   String selectedStatus = 'ALL';
//   String keyword = '';

//   @override
//   void initState() {
//     super.initState();
//     searchController.addListener(() {
//       setState(() {
//         searchQuery = searchController.text;
//       });
//     });
//   }

//   void showFilterPopup(BuildContext context) {
//     final List<String> statuses = ['ALL', 'Processing', 'Delivered', 'Pending', 'Cancelled'];

//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       builder: (context) {
//         return Padding(
//           padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//           child: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: TextField(
//                           decoration: InputDecoration(hintText: 'Keywords'),
//                           onChanged: (value) {
//                             setState(() {
//                               keyword = value;
//                             });
//                           },
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Expanded(
//                         child: DropdownButtonFormField(
//                           hint: Text('Select Status'),
//                           items: statuses.map((status) {
//                             return DropdownMenuItem(
//                               value: status,
//                               child: Text(status),
//                             );
//                           }).toList(),
//                           onChanged: (value) {
//                             setState(() {
//                               selectedStatus = value.toString();
//                             });
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                           onPressed: () {
//                             Navigator.pop(context);
//                             setState(() {
//                               filter = selectedStatus;
//                               searchQuery = keyword;
//                             });
//                           },
//                           child: Text('Filter Orders', style: TextStyle(color: Colors.white)),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> filteredOrders = orders.where((order) {
//       final matchesKeyword = order['id']
//           .toString()
//           .toLowerCase()
//           .contains(searchQuery.toLowerCase());
//       final matchesStatus = filter == 'ALL' || order['status'] == filter;
//       return matchesKeyword && matchesStatus;
//     }).toList();

//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: SafeArea(
//           child: AppBar(
//             backgroundColor: Colors.white,
//            // leading: Icon(Icons.arrow_back),
//             title: Text('Orders'),
//             actions: [
//               GestureDetector(
//                 onTap: () {
//                   showFilterPopup(context);
//                 },
//                 child: Icon(Icons.filter_list),
//               ),
//               SizedBox(width: 10),
//             ],
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           // Search Bar
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search orders...',
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//               ),
//             ),
//           ),
//           // Suggestions
//           if (searchQuery.isNotEmpty)
//             Container(
//               height: 100,
//               child: ListView(
//                 children: filteredOrders.map((order) {
//                   return ListTile(
//                     title: Text(order['id']),
//                     onTap: () {
//                       setState(() {
//                         searchController.text = order['id'];
//                         searchQuery = ''; // Clear search query to remove suggestions
//                       });
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//           // Filter Tabs
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   FilterChip(
//                     label: Text('ALL'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'ALL';
//                       });
//                     },
//                     selected: filter == 'ALL',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Delivered'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Delivered';
//                       });
//                     },
//                     selected: filter == 'Delivered',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Processing'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Processing';
//                       });
//                     },
//                     selected: filter == 'Processing',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Cancelled'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Cancelled';
//                       });
//                     },
//                     selected: filter == 'Cancelled',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                   SizedBox(width: 8),
//                   FilterChip(
//                     label: Text('Pending'),
//                     onSelected: (bool value) {
//                       setState(() {
//                         filter = 'Pending';
//                       });
//                     },
//                     selected: filter == 'Pending',
//                     selectedColor: Colors.blue[100],
//                     backgroundColor: Colors.grey[200],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Orders List
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredOrders.length,
//               itemBuilder: (context, index) {
//                 final order = filteredOrders[index];
//                 return Card(
//                   margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Order ID: ${order['id']}',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Icon(Icons.circle, color: Colors.black, size: 16),
//                                 SizedBox(width: 8),
//                                 Text(
//                                   '${order['origin']}',
//                                   style: TextStyle(fontSize: 14),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               '${order['originDate']}, ${order['originTime']}',
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Icon(Icons.location_pin, color: Colors.orange, size: 16),
//                                 SizedBox(width: 8),
//                                 Text(
//                                   '${order['destination']}',
//                                   style: TextStyle(fontSize: 14),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               '${order['destinationDate']}, ${order['destinationTime']}',
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                           decoration: BoxDecoration(
//                             color: order['statusColor'],
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             order['status'],
//                             style: TextStyle(
//                               color: order['statusTextColor'],
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:dash_logistics/utils/colors.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  // Sample data for orders
  final List<Map<String, dynamic>> orders = [
    {
      'id': '#934858',
      'status': 'Processing',
      'statusColor': AppColors.pink[100],
      'statusTextColor': AppColors.pink,
      'origin': 'Los Angeles, CA',
      'originDate': '23 Nov',
      'originTime': '7:00 PM',
      'destination': 'San Francisco, CA',
      'destinationDate': '24 Nov',
      'destinationTime': '10:00 AM',
    },
    {
      'id': '#93749',
      'status': 'Delivered',
      'statusColor': AppColors.green[100],
      'statusTextColor': AppColors.green,
      'origin': 'Long Beach, CA',
      'originDate': '11 Oct',
      'originTime': '5:00 AM',
      'destination': 'San Francisco, CA',
      'destinationDate': '15 Oct',
      'destinationTime': '6:00 PM',
    },
    {
      'id': '#HKY945',
      'status': 'Pending',
      'statusColor': AppColors.red[100],
      'statusTextColor': AppColors.red,
      'origin': 'San Diego, CA',
      'originDate': '5 Nov',
      'originTime': '2:00 AM',
      'destination': 'Oakland, CA',
      'destinationDate': '6 Nov',
      'destinationTime': '11:00 PM',
    },
    {
      'id': '#9345J',
      'status': 'Cancelled',
      'statusColor': AppColors.grey[200],
      'statusTextColor': AppColors.grey,
      'origin': 'Pasadena, CA',
      'originDate': '8 Nov',
      'originTime': '11:00 AM',
      'destination': 'Sacramento, CA',
      'destinationDate': '9 Nov',
      'destinationTime': '3:00 PM',
    },
  ];

  String filter = 'ALL';
  String searchQuery = '';
  TextEditingController searchController = TextEditingController();
  String selectedStatus = 'ALL';
  String keyword = '';

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        searchQuery = searchController.text;
      });
    });
  }

  void showFilterPopup(BuildContext context) {
    final List<String> statuses = ['ALL', 'Processing', 'Delivered', 'Pending', 'Cancelled'];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Keywords'),
                          onChanged: (value) {
                            setState(() {
                              keyword = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: DropdownButtonFormField(
                          hint: Text('Select Status'),
                          items: statuses.map((status) {
                            return DropdownMenuItem(
                              value: status,
                              child: Text(status),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedStatus = value.toString();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: AppColors.redColor),
                          onPressed: () {
                            Navigator.pop(context);
                            setState(() {
                              filter = selectedStatus;
                              searchQuery = keyword;
                            });
                          },
                          child: Text('Filter Orders', style: TextStyle(color: AppColors.whiteCol)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredOrders = orders.where((order) {
      final matchesKeyword = order['id']
          .toString()
          .toLowerCase()
          .contains(searchQuery.toLowerCase());
      final matchesStatus = filter == 'ALL' || order['status'] == filter;
      return matchesKeyword && matchesStatus;
    }).toList();

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(kToolbarHeight),
      //   child: SafeArea(
      //     child: AppBar(
      //       backgroundColor: AppColors.lightGrey,
      //      // leading: Icon(Icons.arrow_back),
      //       title: Text('Orders'),
      //       actions: [
      //         GestureDetector(
      //           onTap: () {
      //             showFilterPopup(context);
      //           },
      //           child: Icon(Icons.filter_list),
      //         ),
      //         SizedBox(width: 10),
      //       ],
      //     ),
      //   ),
      // ),

              appBar: AppBar(
        elevation: 0, // No shadow for a flat look
     backgroundColor: AppColors.white,
            title: Text('Orders'),
            actions: [
              GestureDetector(
                onTap: () { showFilterPopup(context);},
                child: Icon(Icons.filter_list),
              ),
              SizedBox(width: 10),
            ],
     
        centerTitle: true,
      ),
      body: Container(
        color: AppColors.dashLigtGray,
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search orders...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColors.grey[200],
                ),
              ),
            ),
            // Suggestions
            if (searchQuery.isNotEmpty)
              Container(
                height: 100,
                child: ListView(
                  children: filteredOrders.map((order) {
                    return ListTile(
                      title: Text(order['id']),
                      onTap: () {
                        setState(() {
                          searchController.text = order['id'];
                          searchQuery = ''; // Clear search query to remove suggestions
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            // Filter Tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChip(
                      label: Text('ALL'),
                      onSelected: (bool value) {
                        setState(() {
                          filter = 'ALL';
                        });
                      },
                      selected: filter == 'ALL',
                      selectedColor: AppColors.blue[100],
                      backgroundColor: AppColors.grey[200],
                    ),
                    SizedBox(width: 8),
                    FilterChip(
                      label: Text('Delivered'),
                      onSelected: (bool value) {
                        setState(() {
                          filter = 'Delivered';
                        });
                      },
                      selected: filter == 'Delivered',
                      selectedColor: AppColors.blue[100],
                      backgroundColor: AppColors.grey[200],
                    ),
                    SizedBox(width: 8),
                    FilterChip(
                      label: Text('Processing'),
                      onSelected: (bool value) {
                        setState(() {
                          filter = 'Processing';
                        });
                      },
                      selected: filter == 'Processing',
                      selectedColor: AppColors.blue[100],
                      backgroundColor: AppColors.grey[200],
                    ),
                    SizedBox(width: 8),
                    FilterChip(
                      label: Text('Cancelled'),
                      onSelected: (bool value) {
                        setState(() {
                          filter = 'Cancelled';
                        });
                      },
                      selected: filter == 'Cancelled',
                      selectedColor: AppColors.blue[100],
                      backgroundColor: AppColors.grey[200],
                    ),
                    SizedBox(width: 8),
                    FilterChip(
                      label: Text('Pending'),
                      onSelected: (bool value) {
                        setState(() {
                          filter = 'Pending';
                        });
                      },
                      selected: filter == 'Pending',
                      selectedColor: AppColors.blue[100],
                      backgroundColor: AppColors.grey[200],
                    ),
                  ],
                ),
              ),
            ),
            // Orders List
            Expanded(
              child: ListView.builder(
                itemCount: filteredOrders.length,
                itemBuilder: (context, index) {
                  final order = filteredOrders[index];
                  return Card(color: AppColors.whiteCol,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order ID: ${order['id']}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.my_location, color: AppColors.black, size: 16),
                                  SizedBox(width: 8),
                                  Text(
                                    '${order['origin']}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Text(
                                '${order['originDate']}, ${order['originTime']}',
                                style: TextStyle(fontSize: 12, color: AppColors.grey),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.location_pin, color: AppColors.dashOrange, size: 16),
                                  SizedBox(width: 8),
                                  Text(
                                    '${order['destination']}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Text(
                                '${order['destinationDate']}, ${order['destinationTime']}',
                                style: TextStyle(fontSize: 12, color: AppColors.grey),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: order['statusColor'],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              order['status'],
                              style: TextStyle(
                                color: order['statusTextColor'],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}