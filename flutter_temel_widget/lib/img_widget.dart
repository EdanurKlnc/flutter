import 'package:flutter/material.dart';

class ImageOrnekleri extends StatefulWidget {
  const ImageOrnekleri({super.key});

  @override
  State<ImageOrnekleri> createState() => _ImageOrnekleriState();
}

class _ImageOrnekleriState extends State<ImageOrnekleri> {
  @override
  Widget build(BuildContext context) {
    String _url =
        'https://cdn.dsmcdn.com/mnresize/1200/1800/ty57/product/media/images/20210120/12/55466064/91936701/1/1_org_zoom.jpg';

    return Center(
      child: Column(
        children: [
          IntrinsicHeight( //Bütün satırın yüksekliklerini içindeki max yükseklik kadar yapar
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Resmi bilgisayardan ekleme
                Expanded(
                  //Responsive bir görüntü olsun diye expanded içerise yazıyoruz
                  child: Container(
                    color: Colors.black12,
                    child: Image.asset('assets/img/shoppingg.jpg',
                        fit: BoxFit.cover //Resmin bütün kutuya yayılması
                        ),
                  ),
                ),
          
                //Resmi internetten ekleme
                Expanded(
                  child: Container(
                    color: Colors.black12,
                    child: Image.network(_url),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.black12,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(_url),
                        backgroundColor: Colors.amber,
                      )),
                ),
              ],
            ),
          ),
          FadeInImage.assetNetwork( //internetten fotoğraf gelene kadar ekranda başka bir şey döndürür.
            placeholder: 'assets/img/shoppingg.jpg', image: _url),
        ],
      ),
    );
  }
}
