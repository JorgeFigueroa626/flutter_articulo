## Flutter: Pruebas unitarias de solicitudes http

In this example we are going to create an app using [Flutter Bloc](https://pub.dev/packages/flutter_bloc)

- Learn how to use manage states using bloc
- Separate the app in multiple layers (presentation, business logic, data)
- Make request to a Rest API using [Http](https://pub.dev/packages/http)
- Unit test & widget test
- Handle exceptions


## Requisitos

- Get an API key from [https://newsapi.org/](https://newsapi.org/)
- Add the API key in the `NewsProvider` class

  ````
  class NewsProvider {
    static const String _apiKey = 'Change to your own api key';
  ````

- Run the command `flutter pub run build_runner watch --delete-conflicting-outputs` to generate the code.
## ARQUITECTURA

<img src="https://github.com/JorgeFigueroa626/flutter_articulo/blob/main/ArquitecturaApp.png" class="img-thumbnail">

## CAPTURAS
| Success Response                                | Handle ApiKey Invalid                           | Details                                         |
|-------------------------------------------------|-------------------------------------------------|-------------------------------------------------|
| <img src="https://github.com/JorgeFigueroa626/flutter_articulo/blob/main/image1.png" height="520"> | <img src="https://github.com/JorgeFigueroa626/flutter_articulo/blob/main/image2.png" height="520"> | <img src="https://github.com/JorgeFigueroa626/flutter_articulo/blob/main/image3.png" height="520"> |
