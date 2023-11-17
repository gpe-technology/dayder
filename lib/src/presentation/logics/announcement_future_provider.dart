import 'package:dayder/src/domain/models/announcement_model/announcement_model.dart';
import 'package:faker/faker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final announcementFutureProvider =
    FutureProvider<List<AnnouncementModel>>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return [
    AnnouncementModel(
        id: "1",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "2",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "3",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "4",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "5",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "6",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "7",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "8",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "9",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
    AnnouncementModel(
        id: "10",
        url: faker.image.image(),
        description: faker.lorem.words(20).toString()),
  ];
});
