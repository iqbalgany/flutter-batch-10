import 'package:flutter/material.dart';
import 'package:flutter_batch_10/widgets/football_player_widget.dart';

class ListviewSeperatorPage extends StatelessWidget {
  const ListviewSeperatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final footbalPlayers = [
      {
        'name': 'Erling Haaland',
        'country': 'Norway',
        'imageUrl':
            'https://th.bing.com/th/id/OIP.3wl5JgXo_TN6cX3dGETVoQHaEK?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
      },
      {
        'name': 'Cristiano Ronaldo',
        'country': 'Portugal',
        'imageUrl':
            'https://tse1.mm.bing.net/th/id/OIP.yLai87v_tD5Ryg8BEwqmegHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
      },
      {
        'name': 'Lionel Messi',
        'country': 'Argentina',
        'imageUrl':
            'https://ds-images.bolavip.com/news/image?src=https://images.bolavip.com/jpg/en/full/BUS_20240522_BUS_127540_lionelmessi-1.jpg&width=1200&height=740',
      },
      {
        'name': 'Erling Haaland',
        'country': 'Norway',
        'imageUrl':
            'https://th.bing.com/th/id/OIP.3wl5JgXo_TN6cX3dGETVoQHaEK?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
      },
      {
        'name': 'Cristiano Ronaldo',
        'country': 'Portugal',
        'imageUrl':
            'https://tse1.mm.bing.net/th/id/OIP.yLai87v_tD5Ryg8BEwqmegHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
      },
      {
        'name': 'Lionel Messi',
        'country': 'Argentina',
        'imageUrl':
            'https://ds-images.bolavip.com/news/image?src=https://images.bolavip.com/jpg/en/full/BUS_20240522_BUS_127540_lionelmessi-1.jpg&width=1200&height=740',
      },
      {
        'name': 'Erling Haaland',
        'country': 'Norway',
        'imageUrl':
            'https://th.bing.com/th/id/OIP.3wl5JgXo_TN6cX3dGETVoQHaEK?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
      },
      {
        'name': 'Cristiano Ronaldo',
        'country': 'Portugal',
        'imageUrl':
            'https://tse1.mm.bing.net/th/id/OIP.yLai87v_tD5Ryg8BEwqmegHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
      },
      {
        'name': 'Lionel Messi',
        'country': 'Argentina',
        'imageUrl':
            'https://ds-images.bolavip.com/news/image?src=https://images.bolavip.com/jpg/en/full/BUS_20240522_BUS_127540_lionelmessi-1.jpg&width=1200&height=740',
      },
      {
        'name': 'Erling Haaland',
        'country': 'Norway',
        'imageUrl':
            'https://th.bing.com/th/id/OIP.3wl5JgXo_TN6cX3dGETVoQHaEK?w=270&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
      },
      {
        'name': 'Cristiano Ronaldo',
        'country': 'Portugal',
        'imageUrl':
            'https://tse1.mm.bing.net/th/id/OIP.yLai87v_tD5Ryg8BEwqmegHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
      },
      {
        'name': 'Lionel Messi',
        'country': 'Argentina',
        'imageUrl':
            'https://ds-images.bolavip.com/news/image?src=https://images.bolavip.com/jpg/en/full/BUS_20240522_BUS_127540_lionelmessi-1.jpg&width=1200&height=740',
      },
    ];

    final favoritePlayers = <String>{};

    return ListView.separated(
      separatorBuilder: (context, index) => index % 5 == 0
          ? Container(color: Colors.red, width: double.infinity, height: 100)
          : SizedBox(height: index % 2 == 0 ? 16 : 32),
      itemCount: footbalPlayers.length,
      itemBuilder: (context, index) {
        return FootballPlayerWidget(
          name: footbalPlayers[index]['name']!,
          country: footbalPlayers[index]['country']!,
          imageUrl: footbalPlayers[index]['imageUrl']!,
          isFavorite: favoritePlayers.contains(footbalPlayers[index]['name']!),
          ontap: () {},
        );
      },
    );
  }
}
