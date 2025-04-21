



// import 'package:dash_logistics/screens.dart/order_edit_screen.dart';
// import 'package:dash_logistics/utils/colors.dart';
// import 'package:flutter/material.dart';

// class OrderFormDialog extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Container(
//         width: MediaQuery.of(context).size.width * 0.99,
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Order Form',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.black87,
//               ),
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Receiver Details Section
//                       Text(
//                         'RECEIVER DETAILS',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.black87,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Please enter the details below',
//                         style: TextStyle(color: AppColors.grey),
//                       ),
//                       SizedBox(height: 16),
//                       _buildTextField('Mobile Number *', 'Enter your mobile number'),
//                       SizedBox(height: 16),
//                       Text('Delivery Address', style: TextStyle(fontWeight: FontWeight.bold)),
//                       SizedBox(height: 8),
//                       _buildDropdownFieldLocation('Location *', ['Kathmandu', 'Lalitpur', 'Bhaktapur']),
//                       SizedBox(height: 16),
//                       _buildTextFieldAddress('Landmark', 'Enter your landmark'),
//                       SizedBox(height: 16),
//                       _buildTextFieldAddress('Address *', 'Enter your address'),
//                       SizedBox(height: 16),
//                       _buildTextField('Receiver Name *', 'Enter your name'),
//                       SizedBox(height: 32),

//                       // Product Details Section
//                       Text(
//                         'PRODUCT DETAILS',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.black87,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Please enter the product information',
//                         style: TextStyle(color: AppColors.grey),
//                       ),
//                       SizedBox(height: 16),
//                       _buildTextField('Product Name', 'Enter product name'),
//                       SizedBox(height: 16),
//                       _buildTextField('Product Amount', 'Enter amount'),
//                       SizedBox(height: 16),
//                       Text('Delivery Rates', style: TextStyle(fontWeight: FontWeight.bold)),
//                       SizedBox(height: 8),
//                       _buildTextField('Delivery Rates', '250', enabled: false),
//                       SizedBox(height: 16),
//                       _buildTextField('Client Note', 'Enter any additional notes', maxLines: 3),
//                       SizedBox(height: 16),
//                       _buildDropdownField('Package Permission', ['Can Open', "Can't Open"]),
//                       SizedBox(height: 16),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('CANCEL', style: TextStyle(color: AppColors.primaryColor)),
//                 ),
//                 SizedBox(width: 8),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Process form data
//                     }
//                   },
//                   icon: Icon(Icons.send, color: AppColors.whiteCol),
//                   label: Text('SEND', style: TextStyle(color: AppColors.whiteCol)),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primaryColor,
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, String hint, {int maxLines = 1, bool enabled = true}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16)),
//         SizedBox(height: 8),
//         TextFormField(
//           enabled: enabled,
//           maxLines: maxLines,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: TextStyle(color: AppColors.grey),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11), // Slightly rounded corners
//               borderSide: BorderSide.none, // No border
//             ),
//             filled: true,
//             fillColor: AppColors.grey50,
//           ),
//           validator: (value) {
//             if (label.contains('*') && (value == null || value.isEmpty)) {
//               return 'This field is required';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildTextFieldAddress(String label, String hint, {int maxLines = 1, bool enabled = true}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextFormField(
//           enabled: enabled,
//           maxLines: maxLines,
//           decoration: InputDecoration(
//             hintText: hint,
//             hintStyle: TextStyle(color: AppColors.grey),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11), // Slightly rounded corners
//               borderSide: BorderSide.none, // No border
//             ),
//             filled: true,
//             fillColor: AppColors.grey50,
//           ),
//           validator: (value) {
//             if (label.contains('*') && (value == null || value.isEmpty)) {
//               return 'This field is required';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownField(String label, List<String> items) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16)),
//         SizedBox(height: 8),
//         DropdownButtonFormField<String>(
//           decoration: InputDecoration(
//             hintText: label,
//             hintStyle: TextStyle(color: AppColors.grey),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11), // Slightly rounded corners
//               borderSide: BorderSide.none, // No border
//             ),
//             filled: true,
//             fillColor: AppColors.grey50,
//           ),
//           items: items.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           onChanged: (value) {},
//           validator: (value) {
//             if (label.contains('*') && (value == null || value.isEmpty)) {
//               return 'This field is required';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildDropdownFieldLocation(String label, List<String> items) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         DropdownButtonFormField<String>(
//           decoration: InputDecoration(
//             hintText: label,
//             hintStyle: TextStyle(color: AppColors.grey),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(11), // Slightly rounded corners
//               borderSide: BorderSide.none, // No border
//             ),
//             filled: true,
//             fillColor: AppColors.grey50,
//           ),
//           items: items.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           onChanged: (value) {},
//           validator: (value) {
//             if (label.contains('*') && (value == null || value.isEmpty)) {
//               return 'This field is required';
//             }
//             return null;
//           },
//         ),
//       ],
//     );
//   }
// }



import 'package:dash_logistics/screens.dart/order_edit_screen.dart';
import 'package:dash_logistics/utils/colors.dart';
import 'package:flutter/material.dart';

class OrderFormDialog extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      insetPadding: EdgeInsets.all(16),
      contentPadding: EdgeInsets.all(16),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      content: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Update Order',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black87,
                  ),
                ),
                SizedBox(height: 16),
                // Receiver Details Section
                Text(
                  'RECEIVER DETAILS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Please enter the details below',
                  style: TextStyle(color: AppColors.grey),
                ),
                SizedBox(height: 16),
                _buildTextField('Mobile Number *', 'Enter your mobile number'),
                SizedBox(height: 16),
                Text('Delivery Address', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                _buildDropdownFieldLocation('Location *', ['Kathmandu', 'Lalitpur', 'Bhaktapur']),
                SizedBox(height: 16),
                _buildTextFieldAddress('Landmark', 'Enter your landmark'),
                SizedBox(height: 16),
                _buildTextFieldAddress('Address *', 'Enter your address'),
                SizedBox(height: 16),
                _buildTextField('Receiver Name *', 'Enter your name'),
                SizedBox(height: 32),

                // Product Details Section
                Text(
                  'PRODUCT DETAILS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Please enter the product information',
                  style: TextStyle(color: AppColors.grey),
                ),
                SizedBox(height: 16),
                _buildTextField('Product Name', 'Enter product name'),
                SizedBox(height: 16),
                _buildTextField('Product Amount', 'Enter amount'),
                SizedBox(height: 16),
                Text('Delivery Rates', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                _buildTextField('Delivery Rates', '250', enabled: false),
                SizedBox(height: 16),
                _buildTextField('Client Note', 'Enter any additional notes', maxLines: 3),
                SizedBox(height: 16),
                _buildDropdownField('Package Permission', ['Can Open', "Can't Open"]),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('CANCEL', style: TextStyle(color: AppColors.primaryColor)),
        ),
        ElevatedButton.icon(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Process form data
            }
          },
          icon: Icon(Icons.send, color: AppColors.whiteCol),
          label: Text('SEND', style: TextStyle(color: AppColors.whiteCol)),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String label, String hint, {int maxLines = 1, bool enabled = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        SizedBox(height: 8),
        TextFormField(
          enabled: enabled,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11), // Slightly rounded corners
              borderSide: BorderSide.none, // No border
            ),
            filled: true,
            fillColor: AppColors.grey50,
          ),
          validator: (value) {
            if (label.contains('*') && (value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildTextFieldAddress(String label, String hint, {int maxLines = 1, bool enabled = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          enabled: enabled,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: AppColors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11), // Slightly rounded corners
              borderSide: BorderSide.none, // No border
            ),
            filled: true,
            fillColor: AppColors.grey50,
          ),
          validator: (value) {
            if (label.contains('*') && (value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(color: AppColors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11), // Slightly rounded corners
              borderSide: BorderSide.none, // No border
            ),
            filled: true,
            fillColor: AppColors.grey50,
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {},
          validator: (value) {
            if (label.contains('*') && (value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildDropdownFieldLocation(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(color: AppColors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11), // Slightly rounded corners
              borderSide: BorderSide.none, // No border
            ),
            filled: true,
            fillColor: AppColors.grey50,
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {},
          validator: (value) {
            if (label.contains('*') && (value == null || value.isEmpty)) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }
}