import 'package:latlong2/latlong.dart';

class MapMarker {
  final String title;
  final String address;
  final LatLng location;
  final String image;

  MapMarker({
    required this.title,
    required this.address,
    required this.location,
    required this.image,
  });
}

var porfiaMarkers = [
  MapMarker(
      title: 'Afueras bloque apartamentos',
      address: 'En la esquina a la entrada de la Madrid etapa 3',
      location: LatLng(4.0593938, -73.6700653),
      image: 'assets/images/routes/Porfia/pPorf1.png'),
  MapMarker(
      title: 'Supermercado Marketing',
      address: 'Supermercado Marketing',
      location: LatLng(4.064833, -73.671318),
      image: 'assets/images/routes/Porfia/pPorf2.png'),
  MapMarker(
      title: 'Salida los Chopos',
      address: 'Frente a la ferretería Las Palmas, diagonal a los Chopos',
      location: LatLng(4.073257, -73.669342),
      image: 'assets/images/routes/Porfia/pPorf3.png'),
  MapMarker(
      title: 'Congente',
      address: 'Frente a cajero congente',
      location: LatLng(4.079063, -73.669262),
      image: 'assets/images/routes/Porfia/pPorf4.png'),
  MapMarker(
      title: 'Consuerte',
      address: 'Diagonal templo católico semáforo Consuerte',
      location: LatLng(4.0826917, -73.6692422),
      image: 'assets/images/routes/Porfia/pPorf5.png'),
  MapMarker(
      title: 'Bomba Texaco',
      address: 'Esquina de la bomba de gasolina en la entrada a porfia',
      location: LatLng(4.088458, -73.670179),
      image: 'assets/images/routes/Porfia/pPorf6.png'),
  MapMarker(
      title: 'Segunda entrada Samán',
      address: 'Segunda entrada Samán en el puente peatonal',
      location: LatLng(4.091312, -73.666702),
      image: 'assets/images/routes/Porfia/pPorf7.png'),
];

var porfiaPoints = <LatLng>[
  LatLng(4.0593938, -73.6700653),
  LatLng(4.064833, -73.671318),
  LatLng(4.073257, -73.669342),
  LatLng(4.079063, -73.669262),
  LatLng(4.0826917, -73.6692422),
  LatLng(4.088458, -73.670179),
  LatLng(4.091312, -73.666702),
];

var vivaMarkers = [
  MapMarker(
      title: 'Esquina semáforo de Viva',
      address: 'Frente al conjunto, donde está el semaforo',
      location: LatLng(4.125370, -73.636071),
      image: 'assets/images/routes/Viva/pViva1.png'),
  MapMarker(
      title: 'Boutique Revival',
      address: 'Frente a la Boutique',
      location: LatLng(4.124263, -73.634550),
      image: 'assets/images/routes/Viva/pViva2.png'),
  MapMarker(
      title: 'Casa Jeréz Inmobiliaria',
      address: 'En la esquina despues del parque donde está la cancha',
      location: LatLng(4.123136, -73.6321427),
      image: 'assets/images/routes/Viva/pViva3.png'),
  MapMarker(
      title: 'Calle 33-45 Esquina',
      address: 'En la papelería al lado de una tienda esquinera',
      location: LatLng(4.122704, -73.629642),
      image: 'assets/images/routes/Viva/pViva4.png'),
  MapMarker(
      title: 'Panadería y pastelería La Cosmopolita',
      address: 'Panadería esquinera',
      location: LatLng(4.1191422, -73.6284305),
      image: 'assets/images/routes/Viva/pViva5.png'),
  MapMarker(
      title: 'Carrera 28F esquina',
      address: 'Casa esquinera con un poste de luz',
      location: LatLng(4.1198703, -73.6257133),
      image: 'assets/images/routes/Viva/pViva6.png'),
];

var vivaPoints = [
  LatLng(4.125370, -73.636071),
  LatLng(4.124263, -73.634550),
  LatLng(4.123136, -73.6321427),
  LatLng(4.1228957, -73.6296829),
  LatLng(4.1191422, -73.6284305),
  LatLng(4.1198703, -73.6257133),
];
