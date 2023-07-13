import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ArticleWise{
  String? design;
  String? size;
  String? color;
  String? pcs;
  String? rate;
  ArticleWise(
    this.design,
    this.size,
    this.color,
    this.pcs,
    this.rate
);


  // factory ArticleWise.fromJson(Map<String,dynamic> json){
  //   return ArticleWise(
  //     design: json['design'],
  //     size: json['size'],
  //     color: json['color'],
  //     pcs: json['pcs'],
  //     rate: json['rate'],
  //   );
  // }
  //
  // Map<String, dynamic> toJson() => {
  //   'design': design,
  //   'size': size,
  //   'color': color,
  //   'pcs': pcs,
  //   'rate': rate
  // };
}

// class HomeController extends GetxController{
//   Rx<List<ArticleWise>> article = Rx<List<ArticleWise>>([]);
//   TextEditingController designTextEditingController = TextEditingController();
//   TextEditingController sizeTextEditingController = TextEditingController();
//   TextEditingController colorTextEditingController = TextEditingController();
//   TextEditingController pcsTextEditingController = TextEditingController();
//   TextEditingController rateTextEditingController = TextEditingController();
//   var itemCount = 0.obs;
//   ArticleWise? articleWise;
//
//   void onClose(){
//     super.onClose();
//     designTextEditingController.dispose();
//     sizeTextEditingController.dispose();
//     colorTextEditingController.dispose();
//     pcsTextEditingController.dispose();
//     rateTextEditingController.dispose();
//   }
//
//   addArticle(String design, String size, String color, int pcs, int rate){
//     articleWise = ArticleWise(design: design, size: size, color: color, pcs: pcs, rate: rate);
//     article.value.add(articleWise!);
//     itemCount.value = article.value.length;
//   }
//
//   removeArticle(int index){
//     article.value.removeAt(index);
//     itemCount.value = article.value.length;
//   }
// }