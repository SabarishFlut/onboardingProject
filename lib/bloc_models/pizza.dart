import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Pizza extends Equatable{
  final String id;
  final String name;
  final Image image;

  Pizza({required this.id,required this.name, required this.image});

  @override
  List<Object?> get props => [id,name,image];
  List<Pizza> pizza =  [
    Pizza(id: '0', name: 'ram', image: Image.network("https://plus.unsplash.com/premium_photo-1698533322757-8b39370dc4de?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
    Pizza(id: '0', name: 'ram', image: Image.network("https://plus.unsplash.com/premium_photo-1698533322757-8b39370dc4de?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
  ];
}