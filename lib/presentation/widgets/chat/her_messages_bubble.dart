import 'package:flutter/material.dart';

class HerMessagesBubble extends StatelessWidget {
  const HerMessagesBubble({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Text('Hola soy Batman.', style: TextStyle(color: Colors.white),),
//           ),
//         ),
//         const SizedBox(height: 10,),
//         _ImageBubble(),
//         const SizedBox(height: 10,),
//       ],
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola soy Batman.', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,),
        _ImageBubble(),
        const SizedBox(height: 10,),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Almacenamos las dimensiones del dispositivo en size
    final size = MediaQuery.of(context).size;

      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/yes/15-3d723ea13af91839a671d4791fc53dcc.gif',
          width: size.width * 0.5,
          height: (size.width * 0.5) / 2,
          fit: BoxFit.fill,

          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 0.5,
              height: (size.width * 0.5) / 2,
              padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5),
              child: const Text('Batman está enviando una imagen'),
            );
          }
          )
      );
  }
}