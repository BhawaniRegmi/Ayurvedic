import 'package:flutter/material.dart';

void showFilterPopup(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(child: DropdownButtonFormField(hint: Text('Select Location'), items: [], onChanged: (value) {})),
                  SizedBox(width: 10),
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'Keywords'))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: DropdownButtonFormField(hint: Text('Select Status'), items: [], onChanged: (value) {})),
                  SizedBox(width: 10),
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'Date Range'))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'From Price'))),
                  SizedBox(width: 10),
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'To Price'))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'From Weight'))),
                  SizedBox(width: 10),
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'To Weight'))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'Tracking Code'))),
                  SizedBox(width: 10),
                  Expanded(child: DropdownButtonFormField(hint: Text('Payment Type'), items: [], onChanged: (value) {})),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: DropdownButtonFormField(hint: Text('Payment Status'), items: [], onChanged: (value) {})),
                  SizedBox(width: 10),
                  Expanded(child: TextField(decoration: InputDecoration(hintText: 'Invoice Number'))),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: Text('Export Excel', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: Text('Filter Orders', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
