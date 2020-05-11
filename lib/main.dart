import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> versiculos = ["Por isso, vos digo que tudo o que pedirdes, orando, crede que o recebereis e tê-lo-eis. \nMarcos 11:24 | ARC |",
    "Para que, segundo as riquezas da sua glória, vos conceda que sejais corroborados com poder pelo seu Espírito no homem interior; para que Cristo habite, pela fé, no vosso coração; a fim de, estando arraigados e fundados em amor. \nEfésios 3:16-17 | ARC |  ",
    "Ora, a fé é o firme fundamento das coisas que se esperam e a prova das coisas que se não veem.Hebreus 11:1 | ARC | ",
    "Porque andamos por fé e não por vista.\n2 Coríntios 5:7 | ARC |",
    "Ora, o Deus de esperança vos encha de todo o gozo e paz em crença, para que abundeis em esperança pela virtude do Espírito Santo.\nRomanos 15:13 | ARC |   ",
    "Peça-a, porém, com fé, não duvidando; porque o que duvida é semelhante à onda do mar, que é levada pelo vento e lançada de uma para outra parte.\nTiago 1:6 | ARC |  ",
    "Ora, sem fé é impossível agradar-lhe, porque é necessário que aquele que se aproxima de Deus creia que ele existe e que é galardoador dos que o buscam.\nHebreus 11:6 | ARC | ",
    "Disse-lhe Jesus: Não te hei dito que, se creres, verás a glória de Deus?João 11:40 | ARC | ",
    "Sabendo que a prova da vossa fé produz a paciência.Tiago 1:3 | ARC |  ",
    "Ao qual, não o havendo visto, amais; no qual, não o vendo agora, mas crendo, vos alegrais com gozo inefável e glorioso, alcançando o fim da vossa fé, a salvação da alma.\n1 Pedro 1:8-9 | ARC |",
    "E Jesus disse-lhe: Se tu podes crer; tudo é possível ao que crê.Marcos 9:23 | ARC |  ",
    "Disse-lhe Jesus: Eu sou a ressurreição e a vida; quem crê em mim, ainda que esteja morto, viverá; e todo aquele que vive e crê em mim nunca morrerá. Crês tu isso?\nJoão 11:25-26 | ARC |  ",
    "Porque todo o que é nascido de Deus vence o mundo; e esta é a vitória que vence o mundo: a nossa fé.\n1 João 5:4 | ARC |   ",
    "Ora, quanto ao que está enfermo na fé, recebei-o, não em contendas sobre dúvidas.\nRomanos 14:1 | ARC |",
    "Mas tu, ó homem de Deus, foge destas coisas e segue a justiça, a piedade, a fé, o amor, a paciência, a mansidão.\n1 Timóteo 6:11 | ARC | ",
    "E tudo o que pedirdes na oração, crendo, o recebereis.\nMateus 21:22 | ARC |  ",
    "E Jesus lhe disse: Vai, a tua fé te salvou. E logo viu, e seguiu a Jesus pelo caminho.\nMarcos 10:52 | ARC |  ",
    "E ainda que tivesse o dom de profecia, e conhecesse todos os mistérios e toda a ciência, e ainda que tivesse toda a fé, de maneira tal que transportasse os montes, e não tivesse amor, nada seria.\n1 Coríntios 13:2 | ARC |",
    "E Jesus lhes disse: Eu sou o pão da vida; aquele que vem a mim não terá fome; e quem crê em mim nunca terá sede.\nJoão 6:35 | ARC |   ",
    "Escolhi o caminho da verdade;propus-me seguir os teus juízos.Salmos 119:30 | ARC | ",
    "Pela fé, também a mesma Sara recebeu a virtude de conceber e deu à luz já fora da idade; porquanto teve por fiel aquele que lho tinha prometido.\nHebreus 11:11 | ARC |   ",
    "Visto que com o coração se crê para a justiça, e com a boca se faz confissão para a salvação.\nRomanos 10:10 | ARC |   ",
    "Porque nele se descobre a justiça de Deus de fé em fé, como está escrito: Mas o justo viverá da fé.\nRomanos 1:17 | ARC |  ",
    "Porque todos sois filhos de Deus pela fé em Cristo Jesus; porque todos quantos fostes batizados em Cristo já vos revestistes de Cristo.\nGálatas 3:26-27 | ARC | ",
    "Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna.\n João 3:16"];

  var _versiculoGerado = "Toque para gerar um versículo";

  void _gerarVersiculo(){
    final tamanhoArray = versiculos.length;
    var versiculoSorteado = Random().nextInt(tamanhoArray);
    print( "sorteado: $versiculoSorteado  tamanho do array: $tamanhoArray");

    //atualiza a interface
    setState(() {
      this._versiculoGerado = versiculos[versiculoSorteado];
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Versículos bíblicos"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.greenAccent)
        ),
        width: double.infinity,
        height: double.infinity,

        child: Column(
        
          children: <Widget>[

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Passagens bíblicas sobre a fé",
                style: TextStyle(
                  color: Colors.green
                ),
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Image.asset("imagens/logo.png"),
                ),
              ],
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Text(
                      _versiculoGerado,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    )
                ),
              ],
            ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Padding(
              padding: EdgeInsets.all(20),
            child:
            RaisedButton(
                    color: Colors.blue,
                    onPressed: _gerarVersiculo,
                    child: Text(
                      "Novo versículo",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
              ),
                ],
              )


          ],
        ),
      ),
    );
  }
}
