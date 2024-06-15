# NBApp
This app is designed to consume the [API-NBA](https://rapidapi.com/api-sports/api/api-nba) with the purpose of showing the NBA games and their details like teams, players, standing, etc.

Also, this app is designed to demonstrate my knowledge on developing mobile apps using Flutter.

## How to run
To run, put this additional arg to you flutter run:

```
 --dart-define-from-file=.env
```

## Architecture and used packages
Lets take a look on how the app is structured and what features/packages are used.

### App Theme
The app Theme was created using the [Material Design](https://material.io/design) guidelines and the 
[Material Design Builder](https://material-foundation.github.io/material-theme-builder/) to generate 
files accordingly to the selected params (colors and fonts). The generated files are located in the 
'lib/common/theme' folder.

### Routing
The app uses [go_router](https://pub.dev/packages/go_router) to handle the routing. 
The routes are defined in the 'lib/common/routing' folder.

## Dependency Injection
The app uses [get_it](https://pub.dev/packages/get_it) to handle the dependency injection. All the 
classes registered in the 'lib/common/di' folder are available to be injected in the app. In general, 
I choose to inject Data Sources, Repositories, Use Cases and some resources like Dio.