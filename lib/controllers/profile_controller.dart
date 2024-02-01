import 'package:get/get.dart';

class ProfileController{
  RxList profileList = [
    {
      'image':'assets/black.jpg',
      'title':'Mike',
      'age':'19',
      'message':'That sounds like alot of fun, Would you.....',
      'time':'5 mins'

    },{
      'image':'assets/blue.jpg',
      'title':'Diane',
      'age':'26',
      'message':'Im good! Thanks',
      'time':'38 mins'
    },{
      'image':'assets/bright.jpg',
      'title':'Jane',
      'age':'23',
      'message':'Yes it works for me! See you!',
      'time':'2 hrs'
    },{
      'image':'assets/davido.jpg',
      'title':'Davido',
      'age':'24',
      'message':'Yeah',
      'time':'8 hrs'
    },{
      'image':'assets/jones.jpg',
      'title':'Jones',
      'age':'23',
      'message':'How are you doing?',
      'time':'2 days'
    },{
      'image':'assets/man.jpg',
      'title':'Hamza',
      'age':'25',
      'message':'Maybe Tommorow',
      'time':'Last week'
    },{
      'image':'assets/mankind.jpg',
      'title':'Eric',
      'age':'26',
      'message':'That sounds like alot of fun, Would you.....',
      'time':'5 mins'
    },{
      'image':'assets/model.jpg',
      'title':'Claire',
      'age':'23',
      'message':'Im good! Thanks',
      'time':'38 mins'
    },{
      'image':'assets/nerd.jpg',
      'title':'Meghan',
      'age':'24',
      'message':'Yes it works for me! See you!',
      'time':'2 hrs'
    },{
      'image':'assets/peaky.jpg',
      'title':'Shelby',
      'age':'23',
      'message':'Yeah',
      'time':'8 hrs'
    },{
      'image':'assets/photo.jpg',
      'title':'Omoke',
      'age':'26',
      'message':'How are you doing?',
      'time':'2 days'
    },{
      'image':'assets/serious.jpg',
      'title':'Steve',
      'age':'24',
      'message':'Maybe Tommorow',
      'time':'Last week'
    },{
      'image':'assets/set.jpg',
      'title':'Lilian',
      'age':'20',
      'message':'Im good! Thanks',
      'time':'38 mins'
    },{
      'image':'assets/smile.jpg',
      'title':'Linda',
      'age':'22',
      'message':'Yes it works for me! See you!',
      'time':'2 hrs'
    },{
      'image':'assets/stare.jpg',
      'title':'Wendy',
      'age':'19',
      'message':'Yeah',
      'time':'8 hrs'
    },{
      'image':'assets/yes.jpg',
      'title':'Ian',
      'age':'21',
      'message':'How are you doing?',
      'time':'2 days'
    },
  ].obs;

  RxInt currentProfile = 1.obs;
}