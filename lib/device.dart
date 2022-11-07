import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceListEntry extends StatelessWidget {
  final void Function()? onTap;
  final BluetoothDevice device;

  BluetoothDeviceListEntry(
      {this.onTap,
      required this.device,
      required int rssi,
      required bool enabled});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading: const Icon(Icons.devices),
        title: Text(device.name ?? "Unknown device"),
        subtitle: Text(device.address.toString()),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: onTap,
          child: const Text('Connect'),
        ));
  }
}
