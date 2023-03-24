import 'package:flutter/material.dart';
import 'package:portal_unsrat_clone/widget/home/SubDrawer.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      //backgroundColor: Colors.white,
      child: ListView(children: <Widget>[
        Container(
          height: 55,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(220, 53, 69, 1)),
          child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset("assets/images/logo_mosaic.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 8, 8, 8),
                    child: Text(
                      "I N S P I R E",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 40,
            //color: Colors.red,
            child: TextButton(
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.home,
                        size: 30,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Beranda",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      )
                    ])),
          ),
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Biodata",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Biodata Saya"),
            SubDrawer(name: "Ubah Data Pribadi"),
            SubDrawer(name: "Ubah Data Orang Tua"),
            SubDrawer(name: "Ubah Data Keluarga"),
            SubDrawer(name: "Berkas Pendukung"),
            SubDrawer(name: "Rekening Bank"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.menu_book_outlined,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Perkuliahan",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Kampus Merdeka"),
            SubDrawer(name: "Jadwal"),
            SubDrawer(name: "KRS"),
            SubDrawer(name: "Presensi"),
            SubDrawer(name: "Materi Kuliah"),
            SubDrawer(name: "Tugas Kuliah"),
            SubDrawer(name: "Forum Diskusi"),
            SubDrawer(name: "Ujian Akhir Semester"),
            SubDrawer(name: "EPOM"),
            SubDrawer(name: "KHS"),
            SubDrawer(name: "Transkrip"),
            SubDrawer(name: "Bimbingan Khusus")
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.book_outlined,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "E-Learning Unsrat",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Unsrat@Learn"),
            SubDrawer(name: "Microsoft Education"),
            SubDrawer(name: "Google Classroom"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.people,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Kemahasiswaan",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Beasiswa"),
            SubDrawer(name: "Prestasi"),
            SubDrawer(name: "Kompetisi"),
            SubDrawer(name: "Organisasi Mahasiswa"),
            SubDrawer(name: "Penyesuaian UKT"),
            SubDrawer(name: "Angsuran UKT"),
            SubDrawer(name: "Bantuan UKT")
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.location_pin,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "KKT",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Informasi"),
            SubDrawer(name: "Pendaftaran"),
            SubDrawer(name: "Pelaksanaan"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.manage_search,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "PKM Penelitian Mahasiswa",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Informasi Proposal Penelitian"),
            SubDrawer(name: "Pengajuan Proposal Penelitian"),
            SubDrawer(name: "Konfirmasi Proposal Penelitian"),
            SubDrawer(name: "Capaian Luaran"),
            SubDrawer(name: "Surat Tugas Penelitian")
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.chat,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Bimbingan Akademik",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Komunikasi Pembimbing"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.account_balance,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Praktik Lapangan/Magang",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Pembimbing"),
            SubDrawer(name: "Seminar"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.menu_book,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Skripsi/Thesis",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Seminar Proposal"),
            SubDrawer(name: "Pembimbingan"),
            SubDrawer(name: "Seminar Hasil"),
            SubDrawer(name: "Ujian Akhir"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.menu_book_rounded,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Disertasi",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Seminar Proposal"),
            SubDrawer(name: "Pembimbingan"),
            SubDrawer(name: "Seminar Hasil"),
            SubDrawer(name: "Pra-Promosi Doktor"),
            SubDrawer(name: "Promosi Doktor")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 40,
            //color: Colors.red,
            child: TextButton(
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.coffee,
                        size: 30,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Mahasiswa Kewirausahaan",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      )
                    ])),
          ),
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.edit_calendar,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Cuti & Pindah",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Cuti Akademik"),
            SubDrawer(name: "Pindah Prodi"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.school,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Wisuda",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Info"),
            SubDrawer(name: "Kuesioner"),
            SubDrawer(name: "Berkas Umum"),
            SubDrawer(name: "Berkas Tugas Akhir"),
            SubDrawer(name: "Data Tugas Akhir"),
            SubDrawer(name: "Daftar"),
            SubDrawer(name: "Validasi"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.bookmark,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Perpustakaan",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Perpustakaan Unsrat"),
            SubDrawer(name: "e-Library Unsrat"),
            SubDrawer(name: "Koleksi Daring"),
            SubDrawer(name: "Pengajuan Repository"),
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.vaccines,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Pelayanan Kesehatan",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Daftar Vaksinasi"),
            SubDrawer(name: "Lapor Vaksinasi"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 40,
            //color: Colors.red,
            child: TextButton(
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.heart_broken,
                        size: 30,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Konseling",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      )
                    ])),
          ),
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.window,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Layanan Lain",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Event/Rapat"),
            SubDrawer(name: "Riwayat Registrasi"),
            SubDrawer(name: "Billing"),
            SubDrawer(name: "Kalender"),
            SubDrawer(name: "Email Unsrat"),
            SubDrawer(name: "Hotspot Wifi"),
            SubDrawer(name: "Notifikasi"),
            SubDrawer(name: "Daftar Tes Online"),
            SubDrawer(name: "Pelatihan/Workshop"),
            SubDrawer(name: "Peminjaman Fasilitas"),
            SubDrawer(name: "Pengajuan HAKI"),
            SubDrawer(name: "Short Link"),
            SubDrawer(name: "Cek Plagiarisme")
          ],
        ),
        ExpansionTile(
          //backgroundColor: Colors.green,
          //collapsedBackgroundColor: Colors.green,
          title: Row(
            children: const <Widget>[
              Icon(
                Icons.info_outline_rounded,
                size: 30,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                child: Text(
                  "Bantuan Pengguna",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          tilePadding: const EdgeInsets.only(left: 20),
          children: const <Widget>[
            SubDrawer(name: "Panduan Inspire"),
            SubDrawer(name: "Helpdesk"),
            SubDrawer(name: "eLapor"),
          ],
        ),
      ]),
    );
  }
}
