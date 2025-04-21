import 'dart:convert';
import 'package:dash_logistics/models/package_model.dart';
import 'package:http/http.dart' as http;


class PackageRepository {
  Future<Package> fetchPackageDetails(String trackingNumber) async {
    final response = await http.get(Uri.parse('https://api.example.com/track/$trackingNumber'));

    if (response.statusCode == 200) {
      return Package.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load package details');
    }
  }
}