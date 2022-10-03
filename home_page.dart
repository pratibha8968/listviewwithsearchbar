import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> name = [
    'Pihu',
    'Priyanka',
    'Priya',
    'Piyush',
    'Manik',
    'Shweta',
    'Geetika',
    'Venus',
    'Rajan',
    'mansi',
    'Suman',
    'Dolly'
  ];
  List<String> _selectedName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  searchBar() {
    return const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "search",
            suffixIcon: Icon(
              Icons.search_outlined,
              color: Colors.greenAccent,
            )));
  }

  dataList() {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              if (_selectedName.contains(name[index].toString())) {
                _selectedName.remove(name[index].toString());
              } else {
                _selectedName.add(name[index].toString());
              }
            });
            print('myvalue');
            print(_selectedName.toString());
          },
          child: Card(
            child: ListTile(
              title: Text(name[index].toString()),
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: _selectedName.contains(name[index].toString())
                      ? Colors.red
                      : Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(_selectedName.contains(name[index].toString())
                      ? 'remove'
                      : 'add'),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
