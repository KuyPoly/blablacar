import 'package:flutter/material.dart';
import '../../widgets/actions/bla_search.dart';
import '../../../model/ride/locations.dart';
import '../../../services/location_service.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  State<LocationPickerScreen> createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  final TextEditingController _controller = TextEditingController();

  List<Location> _filteredLocations = [];

  @override
  void initState() {
    super.initState();
    _filteredLocations = LocationsService.availableLocations;
  }

  void _onSearch(String value) {
    setState(() {
      _filteredLocations = LocationsService.availableLocations.where((
        location,
      ) {
        return location.name.toLowerCase().contains(value.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BlaSearch(
          trailing: _controller.text.isEmpty ? null : Icon(Icons.clear),
          onChanged: _onSearch,
          onTrailingPressed: () {
            _controller.clear();
            _onSearch("");
          },
          controller: _controller,
          leading: Icon(Icons.chevron_left),
          onLeadinggPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final location = _filteredLocations[index];
          return ListTile(
            title: Text(location.name),
            subtitle: Text(location.country.name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pop(context, location);
            },
          );
        },
        itemCount: _filteredLocations.length,
      ),
    );
  }
}
