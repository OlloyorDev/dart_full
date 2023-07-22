import 'dart:io';

void main() async {
  final server = await HttpServer.bind('localhost', 9131);
  print('Server is running on localhost:8080');

  await for (HttpRequest request in server) {
    if (request.method == 'GET' && request.uri.path == '/api/onx/users') {
      final users = {
        "data": [
          {'id': 1, 'name': 'John'},
          {'id': 2, 'name': 'Jane'},
          {'id': 3, 'name': 'Olloyor'},
          {'id': 3, 'name': 'Nodirov'},
          {'id': 3, 'name': 'Alisher'},
          {'id': 3, 'name': 'Komil'},
          {'id': 3, 'name': 'Macbook'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
          {'id': 3, 'name': 'Alice'},
        ]
      };

      request.response
        ..headers.contentType = ContentType.json
        ..write(users)
        ..close();
    } else {
      request.response
        ..statusCode = HttpStatus.notFound
        ..write('Endpoint not found')
        ..close();
    }
  }
}



