import 'package:equitysoft/utils.dart';
import 'package:equitysoft/view_models/home_page_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime now;
  int count = 0;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    now = DateTime.parse("2020-09-01 00:00:00.0000");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Called");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ChangeNotifierProvider<HomePageVm>(
        create: (_) => HomePageVm(),
        child: Consumer<HomePageVm>(
          builder: (context, vm, child) {
            if (vm.studentList == null) {
              vm.fetchStudents();
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (vm.studentList.length == 0) {
              return Center(
                child: Text("No Student Fetched"),
              );
            }
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                child: DataTable(
                  columns: List.generate(
                    30,
                    (index) => DataColumn(
                      label: index == 0? Text('Sep 2020 Students'):Text(toHumanReadableDate(now.add(Duration(days: index)))),
                    ),
                  ),
                  rows: [
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[0].name):vm.data.length>0?Text(vm.data[0].rs[index].s):CircularProgressIndicator())),
                    ),
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[1].name):vm.data.length>1?Text(vm.data[1].rs[index].s):CircularProgressIndicator())),
                    ),
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[2].name):vm.data.length>2?Text(vm.data[2].rs[index].s):CircularProgressIndicator())),
                    ),
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[3].name):vm.data.length>3?Text(vm.data[3].rs[index].s):CircularProgressIndicator())),
                    ),
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[4].name):vm.data.length>4?Text(vm.data[4].rs[index].s):CircularProgressIndicator())),
                    ),
                    DataRow(
                      cells: List.generate(30,
                              (index) => DataCell(index==0?Text(vm.studentList[5].name):vm.data.length>5?Text(vm.data[5].rs[index].s):CircularProgressIndicator())),
                    ),
                  ]
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
