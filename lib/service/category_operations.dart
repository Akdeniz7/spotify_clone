import 'package:spotify_clone/model/category.dart';

class CategoryOperations{
  CategoryOperations._() {}
  static List<Category> getCategories(){
    return <Category>[
      Category('Akdeniz#1', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg'),
      Category('Akdeniz#2', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg'),
      Category('Akdeniz#3', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg'),
      Category('Akdeniz#4', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg'),
      Category('Akdeniz#5', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg'),
      Category('Akdeniz#6', 'https://is4-ssl.mzstatic.com/image/thumb/Purple122/v4/f5/1e/85/f51e856c-52c9-a109-44c2-acf22f742643/AppIcon-1x_U007emarketing-0-7-0-sRGB-85-220.png/256x256bb.jpg')
    ];
  }
}