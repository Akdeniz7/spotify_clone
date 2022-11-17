import 'package:spotify_clone/model/music.dart';

class MusicOperations{
  MusicOperations._() {}
  static List<Music> getMusic(){
    return <Music>[
      Music('Joker Mix', '', 'Şehinşah, Hidra, Motive ve daha fazlası'),
      Music('Joker Mix', '../assets/images/indir.png/', 'Şehinşah, Hidra, Motive ve daha fazlası'),
      Music('Joker Mix', '../assets/images/indir.png/', 'Şehinşah, Hidra, Motive ve daha fazlası')
    ];
  }
}