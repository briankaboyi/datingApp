import 'package:get/get.dart';

class ProfileController{
  RxList profileList = [
    {
      'image':'assets/black.jpg',
      'title':'Mike',
      'age':'19',

    },{
      'image':'assets/blue.jpg',
      'title':'Diane',
      'age':'26'
    },{
      'image':'assets/bright.jpg',
      'title':'Jane',
      'age':'23'
    },{
      'image':'assets/davido.jpg',
      'title':'Davido',
      'age':'24'
    },{
      'image':'assets/jones.jpg',
      'title':'Jones',
      'age':'23'
    },{
      'image':'assets/man.jpg',
      'title':'Hamza',
      'age':'25'
    },{
      'image':'assets/mankind.jpg',
      'title':'Eric',
      'age':'26'
    },{
      'image':'assets/model.jpg',
      'title':'Claire',
      'age':'23'
    },{
      'image':'assets/nerd.jpg',
      'title':'Meghan',
      'age':'24'
    },{
      'image':'assets/peaky.jpg',
      'title':'Shelby',
      'age':'23'
    },{
      'image':'assets/photo.jpg',
      'title':'Omoke',
      'age':'26'
    },{
      'image':'assets/serious.jpg',
      'title':'Steve',
      'age':'24'
    },{
      'image':'assets/set.jpg',
      'title':'Lilian',
      'age':'20'
    },{
      'image':'assets/smile.jpg',
      'title':'Linda',
      'age':'22'
    },{
      'image':'assets/stare.jpg',
      'title':'Wendy',
      'age':'19'
    },{
      'image':'assets/yes.jpg',
      'title':'Ian',
      'age':'21'
    },
  ].obs;

  RxInt currentProfile = 1.obs;
}