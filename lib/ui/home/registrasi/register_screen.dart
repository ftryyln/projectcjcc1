import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:tk_al_muhajirin/const/lego_button.dart';
import 'package:tk_al_muhajirin/ui/home/registrasi/register_ayah_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int currentIndex = 0;
  String? selectedValue;
  bool isSelected = false;
  bool isCheckedReguler = false;
  bool isCheckedEkstrakulikuler = false;
  final List<String> _selectedItems = [];

  // This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    if (isSelected) {
      _selectedItems.add(itemValue);
    } else {
      _selectedItems.remove(itemValue);
    }
    setState(() {});
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5400),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Registrasi",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff46AD4C),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("assets/back.png"))),
      body: Column(
        children: [
          Image.asset(
            "assets/awan_atas2.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          SvgPicture.asset(
            "assets/registrasi/progress_blue.svg",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              Stack(children: [
                SizedBox(
                  height: 1250,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 90,
                  right: 0,
                  left: 0,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 1120,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black, width: 5)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Image.asset("assets/registrasi/picreg.jpg"),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Formulir Pendaftaran Siswa Baru",
                          style: GoogleFonts.beVietnamPro(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Data Anak",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text("Nama Lengkap",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Color(0xff004781),
                                        width: 2,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      )),
                                  contentPadding: const EdgeInsets.all(12),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Tempat Lahir",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Color(0xff004781),
                                        width: 2,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      )),
                                  contentPadding: const EdgeInsets.all(12),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Tanggal Lahir",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          color: Color(0xff1C96F9),
                                          width: 2,
                                        )),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(3),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2,
                                        )),
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickeDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101));
                                    if (pickeDate != null) {
                                      print(pickeDate);
                                      String formattedDate =
                                          DateFormat('dd-MM-yyyy')
                                              .format(pickeDate);
                                      print(formattedDate);
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Jenis Kelamin",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelected = !isSelected;
                                      });
                                    },
                                    child: Stack(children: [
                                      Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: isSelected
                                                  ? Colors.white
                                                  : Color(0xff8DCAFC),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(3),
                                                  bottomLeft:
                                                      Radius.circular(3)),
                                              border: Border.all(
                                                  color: isSelected
                                                      ? Colors.grey
                                                      : Color(0xff1C96F9),
                                                  width: 2))),
                                      Positioned.fill(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image.asset(
                                                isSelected
                                                    ? "assets/registrasi/icon_male_unselect.png"
                                                    : "assets/registrasi/icon_male.png",
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                              ),
                                            ),
                                            Text("Laki-laki",
                                                style:
                                                    GoogleFonts.beVietnamPro()
                                                        .copyWith(
                                                  color: isSelected
                                                      ? Colors.grey
                                                      : Colors.black,
                                                  fontSize: 14,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelected = !isSelected;
                                      });
                                    },
                                    child: Stack(children: [
                                      Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: isSelected
                                                  ? Color(0xffFF7CA4)
                                                  : Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(3),
                                                  bottomLeft:
                                                      Radius.circular(3)),
                                              border: Border.all(
                                                  color: isSelected
                                                      ? Color(0xffF82F40)
                                                      : Colors.grey,
                                                  width: 2))),
                                      Positioned.fill(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image.asset(
                                                isSelected
                                                    ? "assets/registrasi/icon_female.png"
                                                    : "assets/registrasi/icon_female_unselect.png",
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                              ),
                                            ),
                                            Text("Perempuan",
                                                style:
                                                    GoogleFonts.beVietnamPro()
                                                        .copyWith(
                                                  color: isSelected
                                                      ? Colors.black
                                                      : Colors.grey,
                                                  fontSize: 14,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Pilih Kelas",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isCheckedReguler,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedReguler = !isCheckedReguler;
                                        });
                                      },
                                    ),
                                    Text("Kelas Reguler",
                                        style:
                                            GoogleFonts.beVietnamPro().copyWith(
                                          color: Colors.black,
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (builder) => AlertDialog(
                                      title:
                                          const Text("Kelas Ekstrakulikuler"),
                                      content: StatefulBuilder(
                                          builder: (context, setStateDialog) {
                                        return SingleChildScrollView(
                                          child: ListBody(
                                            children: ["Berkuda", "Futsal"]
                                                .map((item) => CheckboxListTile(
                                                    value: _selectedItems
                                                        .contains(item),
                                                    title: Text(item),
                                                    controlAffinity:
                                                        ListTileControlAffinity
                                                            .leading,
                                                    onChanged: (isChecked) {
                                                      _itemChange(
                                                          item, isChecked!);
                                                      setStateDialog(() {
                                                        print(_selectedItems
                                                            .toString());
                                                      });
                                                    }))
                                                .toList(),
                                          ),
                                        );
                                      }),
                                      actions: [
                                        TextButton(
                                          onPressed: _cancel,
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: _submit,
                                          child: const Text('Submit'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: isCheckedEkstrakulikuler,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isCheckedEkstrakulikuler =
                                              !isCheckedEkstrakulikuler;
                                        });
                                      },
                                    ),
                                    Text("Kelas Ekstrakulikuler",
                                        style:
                                            GoogleFonts.beVietnamPro().copyWith(
                                          color: Colors.black,
                                          fontSize: 14,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Alamat Lengkap",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Color(0xff004781),
                                        width: 2,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      )),
                                  contentPadding: const EdgeInsets.all(12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterAyahScreen()));
                              },
                              child: LegoNext(
                                  button:
                                      "assets/registrasi/yellow_lego_next.png",
                                  textButton: "Next"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/registrasi/lego.png",
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ]),
            ])),
          ),
        ],
      ),
    );
  }
}
