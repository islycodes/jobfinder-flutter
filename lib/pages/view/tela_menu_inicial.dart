import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/campoTexto.dart';

class TelaMenuInicial extends StatelessWidget {
  static const String svgCode =
      '''<svg width="49" height="47" viewBox="0 0 49 47" fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="path-1-inside-1_11_7" fill="white">
<path d="M6.43663 20.5602L17.685 20.7529L17.6357 23.6275L13.4863 23.5564L13.1966 40.4685L10.197 40.4171L10.4868 23.505L6.38738 23.4348L6.43663 20.5602ZM10.788 5.92218L13.7876 5.97358L13.5848 17.8073L10.5853 17.7559L10.788 5.92218ZM18.9333 15.0235L23.0327 15.0937L23.1862 6.13461L26.1858 6.186L26.0323 15.1451L30.2317 15.2171L30.1824 18.0916L18.8841 17.8981L18.9333 15.0235ZM22.9342 20.8429L25.9338 20.8943L25.5948 40.6809L22.5952 40.6295L22.9342 20.8429ZM31.0467 28.9372L42.2951 29.1299L42.2458 32.0045L38.1464 31.9343L37.9929 40.8934L34.9934 40.842L35.1469 31.8829L30.9975 31.8118L31.0467 28.9372ZM35.5844 6.34703L38.584 6.39842L38.2449 26.1851L35.2454 26.1337L35.5844 6.34703Z"/>
</mask>
<path d="M6.43663 20.5602L17.685 20.7529L17.6357 23.6275L13.4863 23.5564L13.1966 40.4685L10.197 40.4171L10.4868 23.505L6.38738 23.4348L6.43663 20.5602ZM10.788 5.92218L13.7876 5.97358L13.5848 17.8073L10.5853 17.7559L10.788 5.92218ZM18.9333 15.0235L23.0327 15.0937L23.1862 6.13461L26.1858 6.186L26.0323 15.1451L30.2317 15.2171L30.1824 18.0916L18.8841 17.8981L18.9333 15.0235ZM22.9342 20.8429L25.9338 20.8943L25.5948 40.6809L22.5952 40.6295L22.9342 20.8429ZM31.0467 28.9372L42.2951 29.1299L42.2458 32.0045L38.1464 31.9343L37.9929 40.8934L34.9934 40.842L35.1469 31.8829L30.9975 31.8118L31.0467 28.9372ZM35.5844 6.34703L38.584 6.39842L38.2449 26.1851L35.2454 26.1337L35.5844 6.34703Z" fill="white"/>
<path d="M6.43663 20.5602L6.48802 17.5606L3.48846 17.5093L3.43707 20.5088L6.43663 20.5602ZM17.685 20.7529L20.6845 20.8043L20.7359 17.8048L17.7364 17.7534L17.685 20.7529ZM17.6357 23.6275L17.5843 26.6271L20.5839 26.6785L20.6353 23.6789L17.6357 23.6275ZM13.4863 23.5564L13.5377 20.5569L10.5382 20.5055L10.4868 23.505L13.4863 23.5564ZM13.1966 40.4685L13.1452 43.4681L16.1447 43.5195L16.1961 40.5199L13.1966 40.4685ZM10.197 40.4171L7.19746 40.3657L7.14606 43.3653L10.1456 43.4167L10.197 40.4171ZM10.4868 23.505L13.4863 23.5564L13.5377 20.5569L10.5382 20.5055L10.4868 23.505ZM6.38738 23.4348L3.38782 23.3834L3.33643 26.383L6.33599 26.4343L6.38738 23.4348ZM10.788 5.92218L10.8394 2.92262L7.83986 2.87123L7.78847 5.87079L10.788 5.92218ZM13.7876 5.97358L16.7871 6.02497L16.8385 3.02541L13.839 2.97402L13.7876 5.97358ZM13.5848 17.8073L13.5334 20.8068L16.533 20.8582L16.5844 17.8586L13.5848 17.8073ZM10.5853 17.7559L7.58572 17.7045L7.53433 20.704L10.5339 20.7554L10.5853 17.7559ZM18.9333 15.0235L18.9847 12.0239L15.9851 11.9725L15.9338 14.9721L18.9333 15.0235ZM23.0327 15.0937L22.9813 18.0933L25.9809 18.1447L26.0323 15.1451L23.0327 15.0937ZM23.1862 6.13461L23.2376 3.13505L20.238 3.08365L20.1867 6.08321L23.1862 6.13461ZM26.1858 6.186L29.1853 6.23739L29.2367 3.23783L26.2372 3.18644L26.1858 6.186ZM26.0323 15.1451L23.0327 15.0937L22.9813 18.0933L25.9809 18.1447L26.0323 15.1451ZM30.2317 15.2171L33.2312 15.2684L33.2826 12.2689L30.283 12.2175L30.2317 15.2171ZM30.1824 18.0916L30.131 21.0912L33.1306 21.1426L33.182 18.143L30.1824 18.0916ZM18.8841 17.8981L15.8845 17.8467L15.8331 20.8462L18.8327 20.8976L18.8841 17.8981ZM22.9342 20.8429L22.9856 17.8433L19.986 17.7919L19.9346 20.7915L22.9342 20.8429ZM25.9338 20.8943L28.9333 20.9457L28.9847 17.9461L25.9852 17.8947L25.9338 20.8943ZM25.5948 40.6809L25.5434 43.6805L28.5429 43.7319L28.5943 40.7323L25.5948 40.6809ZM22.5952 40.6295L19.5956 40.5782L19.5442 43.5777L22.5438 43.6291L22.5952 40.6295ZM31.0467 28.9372L31.0981 25.9376L28.0986 25.8862L28.0472 28.8858L31.0467 28.9372ZM42.2951 29.1299L45.2946 29.1813L45.346 26.1817L42.3465 26.1304L42.2951 29.1299ZM42.2458 32.0045L42.1944 35.0041L45.194 35.0554L45.2454 32.0559L42.2458 32.0045ZM38.1464 31.9343L38.1978 28.9347L35.1983 28.8833L35.1469 31.8829L38.1464 31.9343ZM37.9929 40.8934L37.9415 43.8929L40.9411 43.9443L40.9925 40.9448L37.9929 40.8934ZM34.9934 40.842L31.9938 40.7906L31.9424 43.7901L34.942 43.8415L34.9934 40.842ZM35.1469 31.8829L38.1464 31.9343L38.1978 28.9347L35.1983 28.8833L35.1469 31.8829ZM30.9975 31.8118L27.9979 31.7604L27.9465 34.7599L30.9461 34.8113L30.9975 31.8118ZM35.5844 6.34703L35.6358 3.34747L32.6362 3.29608L32.5848 6.29564L35.5844 6.34703ZM38.584 6.39842L41.5835 6.44981L41.6349 3.45025L38.6353 3.39886L38.584 6.39842ZM38.2449 26.1851L38.1935 29.1847L41.1931 29.2361L41.2445 26.2365L38.2449 26.1851ZM35.2454 26.1337L32.2458 26.0823L32.1944 29.0819L35.194 29.1333L35.2454 26.1337ZM6.38524 23.5598L17.6336 23.7525L17.7364 17.7534L6.48802 17.5606L6.38524 23.5598ZM14.6854 20.7015L14.6362 23.5761L20.6353 23.6789L20.6845 20.8043L14.6854 20.7015ZM17.6871 20.6279L13.5377 20.5569L13.4349 26.556L17.5843 26.6271L17.6871 20.6279ZM10.4868 23.505L10.197 40.4171L16.1961 40.5199L16.4859 23.6078L10.4868 23.505ZM13.248 37.469L10.2484 37.4176L10.1456 43.4167L13.1452 43.4681L13.248 37.469ZM13.1966 40.4685L13.4863 23.5564L7.48722 23.4536L7.19746 40.3657L13.1966 40.4685ZM10.5382 20.5055L6.43877 20.4352L6.33599 26.4343L10.4354 26.5046L10.5382 20.5055ZM9.38694 23.4862L9.43619 20.6116L3.43707 20.5088L3.38782 23.3834L9.38694 23.4862ZM10.7366 8.92174L13.7362 8.97314L13.839 2.97402L10.8394 2.92262L10.7366 8.92174ZM10.788 5.92218L10.5853 17.7559L16.5844 17.8586L16.7871 6.02497L10.788 5.92218ZM13.6362 14.8077L10.6367 14.7563L10.5339 20.7554L13.5334 20.8068L13.6362 14.8077ZM13.5848 17.8073L13.7876 5.97358L7.78847 5.87079L7.58572 17.7045L13.5848 17.8073ZM18.8819 18.023L22.9813 18.0933L23.0841 12.0941L18.9847 12.0239L18.8819 18.023ZM26.0323 15.1451L26.1858 6.186L20.1867 6.08321L20.0332 15.0423L26.0323 15.1451ZM23.1348 9.13417L26.1344 9.18556L26.2372 3.18644L23.2376 3.13505L23.1348 9.13417ZM23.1862 6.13461L23.0327 15.0937L29.0318 15.1965L29.1853 6.23739L23.1862 6.13461ZM25.9809 18.1447L30.1803 18.2166L30.283 12.2175L26.0837 12.1455L25.9809 18.1447ZM27.2321 15.1657L27.1828 18.0402L33.182 18.143L33.2312 15.2684L27.2321 15.1657ZM30.2338 15.0921L18.9355 14.8985L18.8327 20.8976L30.131 21.0912L30.2338 15.0921ZM21.8836 17.9494L21.9329 15.0749L15.9338 14.9721L15.8845 17.8467L21.8836 17.9494ZM22.8828 23.8424L25.8824 23.8938L25.9852 17.8947L22.9856 17.8433L22.8828 23.8424ZM22.9342 20.8429L22.5952 40.6295L28.5943 40.7323L28.9333 20.9457L22.9342 20.8429ZM25.6461 37.6814L22.6466 37.63L22.5438 43.6291L25.5434 43.6805L25.6461 37.6814ZM25.5948 40.6809L25.9338 20.8943L19.9346 20.7915L19.5956 40.5782L25.5948 40.6809ZM30.9953 31.9368L42.2437 32.1295L42.3465 26.1304L31.0981 25.9376L30.9953 31.9368ZM39.2955 29.0785L39.2463 31.9531L45.2454 32.0559L45.2946 29.1813L39.2955 29.0785ZM42.2972 29.0049L38.1978 28.9347L38.095 34.9338L42.1944 35.0041L42.2972 29.0049ZM35.1469 31.8829L34.9934 40.842L40.9925 40.9448L41.146 31.9857L35.1469 31.8829ZM38.0443 37.8938L35.0448 37.8424L34.942 43.8415L37.9415 43.8929L38.0443 37.8938ZM37.9929 40.8934L38.1464 31.9343L32.1473 31.8315L31.9938 40.7906L37.9929 40.8934ZM35.1983 28.8833L31.0489 28.8122L30.9461 34.8113L35.0955 34.8824L35.1983 28.8833ZM33.997 31.8632L34.0463 28.9886L28.0472 28.8858L27.9979 31.7604L33.997 31.8632ZM35.533 9.34659L38.5326 9.39798L38.6353 3.39886L35.6358 3.34747L35.533 9.34659ZM35.5844 6.34703L35.2454 26.1337L41.2445 26.2365L41.5835 6.44981L35.5844 6.34703ZM38.2963 23.1855L35.2968 23.1341L35.194 29.1333L38.1935 29.1847L38.2963 23.1855ZM38.2449 26.1851L38.584 6.39842L32.5848 6.29564L32.2458 26.0823L38.2449 26.1851Z" fill="white" mask="url(#path-1-inside-1_11_7)"/>
</svg>
''';

  const TelaMenuInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(27, 40, 20, 28),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(children: [
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.account_circle,
                                  size: 40, color: Colors.black),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nome do usuário',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black)),
                                    Text('Curso do usuário - período',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          Text('Encontre seu Emprego',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: campoTexto(
                                    'Pesquisar', controller, Icons.search),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(74, 74),
                                      backgroundColor:
                                          Color.fromRGBO(78, 79, 249, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                  child: SvgPicture.string(svgCode),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Text('Vagas em destaque',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 185,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(12),
                                itemCount: 10,
                                clipBehavior: Clip.none,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(width: 12);
                                },
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: 150,
                                      child: Ink(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, 'telaVaga');
                                            },
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text('Nome da vaga',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                      Text('Nome da empresa',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .black)),
                                                      Text('Local da vaga',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .black)),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )));
                                }),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Relacionado ao seu curso',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      // ['asd','kj','asd','asdasd'].map((item) {
                      //   return Container(child: Text(item));
                      // }).toList(),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                children: ['asd', 'asd', 'asdas', 'asd'].map((e) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Card(
                      // shadowColor: Colors.black54,
                      // elevation: 5,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          Navigator.pushNamed(context, 'telaVaga');
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 13, 25, 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.square_rounded,
                                        size: 48,
                                        color:
                                            Color.fromRGBO(217, 217, 217, 1)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text('Nome da vaga',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        Text('Nome da empresa',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black)),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ]),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]),
          )),
    );
  }
}
