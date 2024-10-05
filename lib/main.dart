import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: shoesApp(),
    );
  }
}

class shoesApp extends StatefulWidget {
  const shoesApp({super.key});

  @override
  State createState() => _shoesappState();
}

int count = 0;

class _shoesappState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(alignment: Alignment.topLeft, 
         child: Text(
          "Shoes",
          style:  TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
         ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.purple,
             ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 300,
              width: 500,
              color: Colors.black,
              child: Image.network(
                  "https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg",
                  fit: BoxFit.cover),
                  ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Nike Air Force 1' 07",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
              ),
                  child: const Text(
                    "SHOES",
                    style:TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
              ),
                child: const Text(
                  "FOOTWEAR",
                   style:TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
                "With Iconic style and legendary comfort, the AF-1 was made to be worn on reapeat.This iteration puts a fresh spin on the hooopsclassic with crisp leather, era-echoing '80s construction and reflective-design Swoosh logos.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                const Text(
                  "Quantity ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  onPressed: () {
                    count--;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          SizedBox(
            width:450,
            height:60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple),
                ),
                child: const Text("Purchase",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
