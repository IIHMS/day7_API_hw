import 'package:api_hw/service/api.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Api for products")),
        backgroundColor: const Color.fromARGB(55, 48, 109, 105),
      ),
      body:FutureBuilder(
      future: Api().getData(),
       builder:(context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(18),
                padding: EdgeInsets.all(6),
                color: const Color.fromARGB(20, 141, 141, 141),
                child: Column(
                  children: [
                    Image.network(snapshot.data![index].images?? "No image"),
                    SizedBox(height: 8),
                    Center(
                      child: Center(
                        child: Text(
                         "",
                          style: TextStyle(fontSize: 10, color: const Color.fromARGB(131, 0, 0, 0)),
                          ),
                      ),
                    ),                    SizedBox(height: 8),

                    Center(
                      child: Text(
                        snapshot.data![index].brand ?? "No brand",
                        style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                    ),                    SizedBox(height: 8),

                    Center(
                      child: Text(
                        snapshot.data![index].thumbnail?? "No thumbnail",
                        style: TextStyle(fontSize: 10, color: const Color.fromARGB(120, 12, 4, 4)),
                        ),
                    ),                    SizedBox(height: 8),

                    Center(
                      child: Text(
                        snapshot.data![index].warrantyInformation?? "No infos",
                        style: TextStyle(fontSize: 10, color: const Color.fromARGB(133, 14, 5, 5)),
                        ),
                    ),
                  ],
                ),
              );
            },
          );
        },)
    );
  }
}