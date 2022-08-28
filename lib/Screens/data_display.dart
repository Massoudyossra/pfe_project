import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataDisplayScreen extends StatefulWidget {
  @override
  DataDisplayScreenState createState() => DataDisplayScreenState();
}

class DataDisplayScreenState extends State<DataDisplayScreen> {
  final Stream<DocumentSnapshot> _usersStream =
      FirebaseFirestore.instance.collection('test').doc('data').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<DocumentSnapshot>(
          stream: _usersStream,
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }
            if (snapshot.hasData) {
              final data = snapshot.data!.data() as Map<String, dynamic>;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Data Stream:",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "L'intensité de courant: ${data['1']}",
                    style: style(),
                  ),
                  Text(
                    'la tension électrique: ${data['2']}',
                    style: style(),
                  ),
                  Text(
                    'La puissance électrique: ${data['3']}',
                    style: style(),
                  ),
                  Text(
                    'Kilowatt-heure: ${data['4']}',
                    style: style(),
                  ),
                  Text('temps: ${data['5']}--${data['6']}'),
                ],
              );
            }

            return Text('No Data found');
          },
        ),
      ),
    );
  }

  TextStyle style() =>
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
}
