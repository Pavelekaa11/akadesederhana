import 'mahasiswa.dart';
import 'nilai.dart';

class Transkrip {
  Mahasiswa mahasiswa;
  List<Nilai> daftarNilai;

  Transkrip({required this.mahasiswa, required this.daftarNilai});

  double hitungIPK() {
    double totalNilai = 0;
    int totalSKS = 0;
    for (var nilai in daftarNilai) {
      totalNilai += nilai.nilai * nilai.mataKuliah.sks;
      totalSKS += nilai.mataKuliah.sks;
    }
    return totalSKS > 0 ? totalNilai / totalSKS : 0;
  }

  void cetakTranskrip() {
    print("Transkrip Nilai: ${mahasiswa.nama} (${mahasiswa.nim})");
    for (var n in daftarNilai) {
      print("${n.mataKuliah.nama}: ${n.nilai} (SKS: ${n.mataKuliah.sks})");
    }
    print("IPK: ${hitungIPK().toStringAsFixed(2)}");
  }
}
