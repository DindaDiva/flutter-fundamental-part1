import 'package:flutter_pertama/ui/produk_detail.dart';
import 'package:flutter/material.dart';


class ProdukForm extends StatefulWidget {
    const ProdukForm({Key? key}) : super(key: key);


  @override
  _ProdukFormState createState() => _ProdukFormState();
}


class _ProdukFormState extends State<ProdukForm>{

  final kodeProdukTBController = TextEditingController();
  final namaProdukTBController = TextEditingController();
  final HargaProdukTBController = TextEditingController();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Color.fromARGB(255, 231, 225, 139),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             tbKodeProoduk(),
             tbNamaProduk(),
             tbHargaProduk(),
             buttonSimpan()
          ],
        ),
      ),
    );
  }


  tbKodeProoduk(){
      return TextField(
        decoration: const InputDecoration(labelText: "Kode Produk"),
        controller: kodeProdukTBController,
      );
  }
  tbNamaProduk(){
      return TextField(
        decoration: const InputDecoration(labelText: "Nama Produk"),
        controller: namaProdukTBController,
      );
  }
  tbHargaProduk(){
      return TextField(
        decoration: const InputDecoration(labelText: "Harga"),
        controller: HargaProdukTBController,
      );
  }
  buttonSimpan(){
      return ElevatedButton(onPressed:() {
        String kodeProduk = kodeProdukTBController.text;
        String namaProduk = namaProdukTBController.text;
        int harga = int.parse(HargaProdukTBController.text);

        Navigator.of(context).push(MaterialPageRoute(
          builder:(context) => ProdukDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
        )));
      }, 
      child: const Text('Simpan'));
  }


}