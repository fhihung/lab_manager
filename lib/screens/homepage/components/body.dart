import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> ids = <String>['ST010', 'ST025', 'ST001'];
  final List<String> nameEm = <String>[
    'Vương Tuấn Cường',
    'Nguyễn Phi Hùng',
    'Phạm Ngọc Việt'
  ];
  final List<String> times = <String>['9:00', '10:00', '11:00'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  elevation: 0,
                  child: ListTile(
                    title: Text(nameEm[index]),
                    subtitle: Text('Student'),
                    leading: Container(
                      child: Center(
                        child: Text(
                          ids[index],
                        ),
                      ),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff5884f3),
                      ),
                    ),
                    trailing: Text(times[index]),
                  ));
            }));
  }
}
