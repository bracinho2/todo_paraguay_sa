import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

final images = [
  'https://images.unsplash.com/photo-1517057970663-5d535acb0b3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
  'https://images.unsplash.com/photo-1620736663824-18f7d3a79d54?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',
  'https://images.unsplash.com/photo-1540558159980-df5705e37f6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
  'https://www.expatexchange.com/images/asuncion_paraguay_ctry_tw.jpg',
  'https://media.ultimahora.com/p/f5f0f14b17c70b20aed06441e1108bf9/adjuntos/161/imagenes/009/211/0009211154/marianela-areguajpg.jpg',
  'https://images.unsplash.com/photo-1517057970663-5d535acb0b3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
  'https://images.unsplash.com/photo-1620736663824-18f7d3a79d54?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',
  'https://images.unsplash.com/photo-1540558159980-df5705e37f6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
  'https://www.expatexchange.com/images/asuncion_paraguay_ctry_tw.jpg',
  'https://media.ultimahora.com/p/f5f0f14b17c70b20aed06441e1108bf9/adjuntos/161/imagenes/009/211/0009211154/marianela-areguajpg.jpg',
  'https://media.ultimahora.com/p/f5f0f14b17c70b20aed06441e1108bf9/adjuntos/161/imagenes/009/211/0009211154/marianela-areguajpg.jpg',
  'https://media.ultimahora.com/p/f5f0f14b17c70b20aed06441e1108bf9/adjuntos/161/imagenes/009/211/0009211154/marianela-areguajpg.jpg',
  'https://media.ultimahora.com/p/f5f0f14b17c70b20aed06441e1108bf9/adjuntos/161/imagenes/009/211/0009211154/marianela-areguajpg.jpg',
];

final products = [
  'https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2KO41DhDckIjkUztbnT5VK37NHQYHSGpIVE36AWqBboeck65tJM1k2aVHhuFKIVta-2o&usqp=CAU',
  'https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
  'https://mallorygroup.vteximg.com.br/arquivos/ids/156704-1000-1000/PIPOQUEIRA-STAR-WARS-2.png?v=637169370736130000',
  'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
  'https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2KO41DhDckIjkUztbnT5VK37NHQYHSGpIVE36AWqBboeck65tJM1k2aVHhuFKIVta-2o&usqp=CAU',
  'https://images.unsplash.com/photo-1530319067432-f2a729c03db5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
  'https://mallorygroup.vteximg.com.br/arquivos/ids/156704-1000-1000/PIPOQUEIRA-STAR-WARS-2.png?v=637169370736130000',
  'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
];

final List<BannerModel> banners = [
  BannerModel(
      imagePath:
          'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      id: '1'),
  BannerModel(
      imagePath:
          'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      id: '2'),
  BannerModel(
      imagePath:
          'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
      id: '3'),
];

final List<Widget> imagesBanner = [
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        ),
      ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
        ),
      ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
        ),
      ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
        ),
      ),
    ),
  ),
  Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
        ),
      ),
    ),
  ),
];

class SearchResult {
  final String title;
  final String description;
  final String link;

  SearchResult({
    required this.title,
    required this.description,
    required this.link,
  });
}

final List<SearchResult> results = [
  SearchResult(
      title: 'Iphone do Caralho',
      description: 'haieuhaiuheiuaheiuhaiuehaiuheiuhaiuehiuhaiue',
      link: 'https://www.youtube.com/watch?v=0q7SugDrMYM'),
];

final resultMap = [
  {
    "title": "Iphone 54",
    "description": "Telefone de rico",
    "link": "https://www.youtube.com/watch?v=0q7SugDrMYM"
  },
  {
    "title": "Iphone 54",
    "description": "Telefone de rico",
    "link": "https://www.youtube.com/watch?v=0q7SugDrMYM"
  },
  {
    "title": "Iphone 54",
    "description": "Telefone de rico",
    "link": "https://www.youtube.com/watch?v=0q7SugDrMYM"
  },
  {
    "title": "Iphone 54",
    "description": "Telefone de rico",
    "link": "https://www.youtube.com/watch?v=0q7SugDrMYM"
  },
  {
    "title": "Iphone 54",
    "description": "Telefone de rico",
    "link": "https://www.youtube.com/watch?v=0q7SugDrMYM"
  }
];

final bannersResult = [
  {
    'id': 01,
    'name': 'roteador',
    'category': 'Categoria do Banner',
    'message': 'hola que tal',
    'url':
        'https://cdn.awsli.com.br/1000x1000/1271/1271561/produto/178856547/0e42a5bdbe.jpg',
    'published': '2020-01-02 03:04:05',
    'expiresAt': '2020-01-02 03:04:05',
    'exhibitionDays': 10
  },
  {
    'id': 01,
    'name': 'roteador',
    'category': 'Categoria do Banner',
    'message': 'hola que tal',
    'url':
        'https://images.tcdn.com.br/img/img_prod/831220/roteador_gigabit_dual_band_ac1200_ac12g_mercusys_p_pc_gamer_47_4_20200803103117.jpg',
    'published': '2020-01-02 03:04:05',
    'expiresAt': '2020-01-02 03:04:05',
    'exhibitionDays': 10
  },
  {
    'id': 01,
    'name': 'roteador',
    'category': 'Categoria do Banner',
    'message': 'hola que tal',
    'url':
        'https://cdn.awsli.com.br/1000x1000/1271/1271561/produto/178856547/0e42a5bdbe.jpg',
    'published': '2020-01-02 03:04:05',
    'expiresAt': '2020-01-02 03:04:05',
    'exhibitionDays': 10
  }
];
