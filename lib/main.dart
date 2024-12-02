import 'akademik/mahasiswa.dart';
import 'akademik/mata_kuliah.dart';
import 'akademik/krs.dart';
import 'akademik/nilai.dart';
import 'akademik/transkrip.dart';

void inputNilaiMahasiswa(Transkrip transkrip, MataKuliah mataKuliah, double nilai) {
  transkrip.daftarNilai.add(Nilai(mataKuliah: mataKuliah, nilai: nilai));
  print('\n=== Input Nilai Mahasiswa ===');
  print("Nilai ${mataKuliah.nama} berhasil dimasukkan untuk ${transkrip.mahasiswa.nama}.");
}

void main() {
  print('\n=== Kartu Rencana Studi ===');
  Mahasiswa mhs = Mahasiswa(nim: "12345", nama: "Budi", semester: 5);
  MataKuliah mk1 = MataKuliah(kode: "MK001", nama: "Algoritma", sks: 3);
  MataKuliah mk2 = MataKuliah(kode: "MK002", nama: "Kalkulus", sks: 4);

  KRS krs = KRS(mahasiswa: mhs, daftarMataKuliah: [mk1, mk2]);
  krs.cetakKRS();

  Transkrip transkrip = Transkrip(mahasiswa: mhs, daftarNilai: []);
  inputNilaiMahasiswa(transkrip, mk1, 3.5);
  inputNilaiMahasiswa(transkrip, mk2, 4.0);
  print('\n=== Transkrip Nilai Mahasiswa ===');
  transkrip.cetakTranskrip();
}
