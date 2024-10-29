import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';

class GpsAccessScreen extends StatelessWidget {
  const GpsAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<GpsBloc, GpsState>(
        builder: (context, state) {
          return !state.isGpsEnabled
              ? const _EnableGpsMessage()
              : const _EnableGpsButton();
        },
      )),
    );
  }
}

class _EnableGpsMessage extends StatelessWidget {
  const _EnableGpsMessage();

  @override
  Widget build(BuildContext context) {
    return Text('GPS enabled is required',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 30,
        ));
  }
}

class _EnableGpsButton extends StatelessWidget {
  const _EnableGpsButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('GPS access is required'),
          MaterialButton(
              onPressed: () {
                final gpsBloc = context.read<GpsBloc>();
                gpsBloc.askGpsAccess();
              },
              child: const Text('Request access')),
        ],
      ),
    );
  }
}
