import 'package:flutter/material.dart';

class OverviewTile extends StatelessWidget {
  const OverviewTile({
    Key? key,
    required this.leading,
    required this.measurementInM,
    required this.measurementInFt,
  }) : super(key: key);

  final String leading;
  final double? measurementInM;
  final double? measurementInFt;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(leading),
      trailing: Text('$measurementInM m / $measurementInFt ft'),
    );
  }
}
