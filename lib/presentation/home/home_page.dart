import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('NBApp'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                'Welcome to NBApp!\nThis is the right place to follow\nthe NBA season by live games',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                child: Text(
                  'Live Games',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'There is no game being played right now.\nCome back when the season starts!',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
