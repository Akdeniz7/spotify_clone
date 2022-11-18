import 'package:spotify_clone/model/music.dart';

class MusicOperations{
  MusicOperations._() {}
  static List<Music> getMusic(){
    return <Music>[
      Music('Rap Mix', 'https://imgrosetta.mynet.com.tr/file/13767546/640xauto.jpg', 'Eminem, Joker ve daha fazlası'),
      Music('Dancehall  Mix', 'https://st.depositphotos.com/1814084/1653/i/600/depositphotos_16535387-stock-photo-sean-paul.jpg', 'Sean Paul, Spice ve daha fazlası'),
      Music('Anadolu rock Mix', 'https://www.retroahsapposter.com/thumbs/upload-images/urun-resimleri/2021-11-04/cem-karaca-ahsap-retro-vintage-poster-5-1080-1080.jpg', 'Cem Karaca, Erkin Koray ve dah..'),
      Music('Gym Brutality', 'https://i1.sndcdn.com/avatars-000698942995-wsudj4-t500x500.jpg', 'Haarper, Sxmpra ve daha fazlası')
    ];
  }
}