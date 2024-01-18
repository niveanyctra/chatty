import 'package:flutter/material.dart';

class FormPendaftaran extends StatefulWidget {
  const FormPendaftaran({Key? key}) : super(key: key);

  @override
  State<FormPendaftaran> createState() => _FormPendaftaranState();
}

class _FormPendaftaranState extends State<FormPendaftaran> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController birthDateController = TextEditingController();
  bool isMale = false;
  bool isFemale = false;
  String gender = '';
  final bloods = [
    'A',
    'B',
    'AB',
    'O',
  ];
  String bloodType = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Silahkan Isi Form Pendaftaran',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Nama Lengkap',
                  labelText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Alamat Lengkap Anda',
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Masukkan Nomor Telepon Anda',
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                readOnly: true,
                onTap: () {
                  showDatePicker(
                    context: context,
                    helpText: 'Silahkan Pilih Tanggal',
                    initialDate: selectedDate,
                    firstDate: DateTime(1973),
                    lastDate: DateTime(2025),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        birthDateController.text = value.toString();
                      });
                    }
                  });
                },
                controller: birthDateController,
                decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Gender'),
              Row(
                children: [
                  Checkbox(
                    value: isMale,
                    onChanged: (bool? value) {
                      setState(() {
                        isMale = value!;
                        gender = 'Laki-laki';
                      });
                    },
                  ),
                  Text('Laki-laki'),
                  Checkbox(
                    value: isFemale,
                    onChanged: (bool? value) {
                      setState(() {
                        isFemale = value!;
                        gender = 'Perempuan';
                      });
                    },
                  ),
                  Text('Perempuan'),
                ],
              ),
              Text("Blood Type's"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bloodType),
                  DropdownButton(
                    items: bloods.map((String bloods) {
                      return DropdownMenuItem(
                        value: bloods,
                        child: Text(bloods),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        bloodType = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                    fixedSize: Size(500, 45)),
                onPressed: () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Terima Kasih, Semua Informasi Sudah Disimpan'),
                        duration: Duration(
                          seconds: 5,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    );
                  });
                },
                child: Text('Kirim Formulir'),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Informasi Anda'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Nama : '),
                  Text(fullNameController.text),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Alamat : '),
                  Text(addressController.text),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Nomor HP : '),
                  Text(phoneController.text),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Tanggal Lahir : '),
                  Text(birthDateController.text),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Jenis Kelamin : '),
                  Text(gender),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Golongan Darah : '),
                  Text(bloodType),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
