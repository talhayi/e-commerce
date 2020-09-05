class Note {
  String durum;

  Note(this.durum);

  Note.fromJson(Map<String, dynamic> json) {
    durum = json['durum'];
    }
}
 