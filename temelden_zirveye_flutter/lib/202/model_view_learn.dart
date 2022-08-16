import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:temelden_zirveye_flutter/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}
 
class _ModelLearnViewState extends State<ModelLearnView> {
  
  var user10 = PostModel9(title: 'user10 title', body:'user10 body', id: null );
  
  @override
  void initState() {
    super.initState();

    

    final user1 = PostModel()
      ..userId = 1
      ..body = 'hello'
      ..id = 1
      ..title = 'hello';
    user1.title = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'c';

    final user3 = PostModel3(1, 2, 'a', 'b');
    //user3.body = 'c';//postmoel3() ' te final tanimlandigi icin hata verir

    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');
    //user4.body = 'c'

// ONERILEN
    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    //user5. // hicbir sey vermez encapsulation yazılabilir
    user5.userId; // yazdigimiz kurallar cercevesinde gorulur

    final user7 = PostModel7(userId: 1, id: 2, title: 'title', body: 'body');
    //user4.body = 'c

    final user8 = PostModel8(); //default degerleri alir
    //user4.body = 'c

// service kullaniliyorsa EN COK ONERILEN
    final user9 = PostModel9(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
      setState(() {
         user10 = user10.copyWith(title: 'Copy With');
         user10 = user10.copyWith(id: null);
         user10.updateBody('updateBody',);
      });
      }),
      appBar: AppBar(
        title: Text(user10.title ?? 'Not has any data',style: const TextStyle(fontSize: 30),),
        // null gelme ihtimali icin kontrol
      ),
      body:Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user10.body ?? 'Not has any data',style:  TextStyle(fontSize: 30),),
            Text('${user10.id}', style:  TextStyle(fontSize: 30),  ),
          ],
        ),
      ),
    );
  }
}
