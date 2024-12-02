import 'mahasiswa.dart';
import 'mata_kuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah;

  KRS({required this.mahasiswa, required this.daftarMataKuliah});

  void cetakKRS() {
    print("KRS Mahasiswa: ${mahasiswa.nama} (${mahasiswa.nim})");
    print("Semester: ${mahasiswa.semester}");
    for (var mk in daftarMataKuliah) {
      print("- ${mk.kode} - ${mk.nama} (${mk.sks} SKS)");
    }
  }
}
