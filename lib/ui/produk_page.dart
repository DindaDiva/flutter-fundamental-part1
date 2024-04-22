import 'package:flutter_pertama/ui/produk_detail.dart';
import 'package:flutter_pertama/ui/produk_form.dart';
import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}): super(key: key);

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: Color.fromARGB(255, 241, 171, 212),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async{
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => const ProdukForm()));
            })
        ],
      ),  

      body: ListView(
        children: const [
          //List1
          ItemProduk(
              kodeProduk:"A1" ,
              namaProduk: "Buku",
              harga: 35000,
            ),
          

        //List2
          ItemProduk(
              kodeProduk: "A2",
              namaProduk: "Figura",
              harga: 19000,
            ),
   

        //List3
        ItemProduk(
              kodeProduk: "A3",
              namaProduk: "Stiker",
              harga: 5000,
            ),


        //List4
        ItemProduk(
              kodeProduk: "A4",
              namaProduk: "Gula",
              harga: 42000,
            ),


        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget{
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
  : super(key: key);

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),

      onTap:(){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ProdukDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
          )));
      },
    );
  }
}
