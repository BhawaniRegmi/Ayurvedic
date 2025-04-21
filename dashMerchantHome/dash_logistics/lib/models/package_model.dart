class Package {
  final String trackingNumber;
  final String status;
  final String destination;
  final String sender;
  final String receiver;

  Package({
    required this.trackingNumber,
    required this.status,
    required this.destination,
    required this.sender,
    required this.receiver,
  });

  factory Package.fromJson(Map<String, dynamic> json) {
    return Package(
      trackingNumber: json['trackingNumber'],
      status: json['status'],
      destination: json['destination'],
      sender: json['sender'],
      receiver: json['receiver'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'trackingNumber': trackingNumber,
      'status': status,
      'destination': destination,
      'sender': sender,
      'receiver': receiver,
    };
  }
}