import 'package:flutter/material.dart';

import 'ricky_morty_view_model.dart';

class RickyMortyView extends RickMortyViewModel {
  String appString = "Ricky and Morties";
  bool isLoading = false;
  loading() {
    isLoading = !isLoading;
  }

  @override
  void initState() {
    fetchAllData();
    loading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appString),
      ),
      body: isLoading
          ? ListView.builder(
              itemCount: models.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(models[index].image ??
                        'https://rickandmortyapi.com/api/character/avatar/1.jpeg'),
                  ),
                  title: Text(models[index].name ?? ''),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
