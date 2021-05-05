import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/my_file.dart';
import 'package:admin/screens/dashboard/components/recent_file.dart';
import 'package:admin/screens/dashboard/components/storage_detail.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                    ],
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: StorageDetail(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
