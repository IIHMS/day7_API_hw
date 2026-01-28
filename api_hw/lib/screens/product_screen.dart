import 'package:api_hw/service/api.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 114, 48),
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
                color: const Color.fromARGB(255, 10, 26, 105),
                child: Column(
                  children: [
                    Image.network(snapshot.data![index].images!),
                    SizedBox(height: 8),
                    Text(
                      snapshot.data![index].title!,
                      style: TextStyle(fontSize: 10),
                      ),
                    Text(
                      snapshot.data![index].brand!,
                      style: TextStyle(fontSize: 10),
                      ),
                    Text(
                      snapshot.data![index].thumbnail!,
                      style: TextStyle(fontSize: 10),
                      ),
                    Text(
                      snapshot.data![index].warrantyInformation!,
                      style: TextStyle(fontSize: 10),
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
// 5class CharactersScreen extends StatelessWidget {
//   const CharactersScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: FutureBuilder(
//         future: Api().getData(), 
//         builder: (context, snapshot) {
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return Center(child: CircularProgressIndicator());
//           }
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 margin: EdgeInsets.all(20),
//                 padding: EdgeInsets.all(8),
//                 color: Colors.cyan.shade300,
//                 child: Column(
//                   children: [
//                     Image.network(snapshot.data![index].imageUrl!),
//                     SizedBox(height: 8),
//                     Text(
//                       snapshot.data![index].name!,
//                       style: TextStyle(fontSize: 22),
//                       ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }