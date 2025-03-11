import 'package:app_ui/app_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/announcement/announcement.dart';
import 'package:dayder/announcement_add/announcement_add.dart';
import 'package:dayder/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AnnouncementAddPage extends StatefulWidget {
  const AnnouncementAddPage({super.key});

  @override
  State<AnnouncementAddPage> createState() => _AnnouncementAddPageState();
}

class _AnnouncementAddPageState extends State<AnnouncementAddPage> {
  final _titleController = TextEditingController();
  final _urlController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnnouncementAddBloc(),
      child: BlocListener<AnnouncementAddBloc, AnnouncementAddState>(
        listener: (context, state) {
          if (state is AnnouncementAddError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is AnnouncementAddSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Announcement added successfully'),
                backgroundColor: Colors.green,
              ),
            );
            context.router.replace(
              AnnouncementDetailRoute(announcement: state.announcement),
            );
          }
        },
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(title: const Text('Add Announcement')),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Input(
                      label: 'Title',
                      hintText: 'Enter a name',
                      controller: _titleController,
                    ),
                    Input(
                      label: 'URL',
                      hintText: 'Enter a URL',
                      controller: _urlController,
                    ),
                    Input(
                      label: 'Description',
                      hintText: 'Enter a description',
                      controller: _descriptionController,
                    ),
                    Input(
                      label: 'Price',
                      hintText: 'Enter a price',
                      controller: _priceController,
                    ),
                  ],
                ),
              ),
            ),
            persistentFooterButtons: [
              BlocBuilder<AnnouncementAddBloc, AnnouncementAddState>(
                builder: (context, state) {
                  return Button(
                    onPressed:
                        () => context.read<AnnouncementAddBloc>().add(
                          AnnouncementAddEventSubmitted(
                            AnnouncementModel(
                              id: '',
                              title: _titleController.text,
                              url: _urlController.text,
                              description: _descriptionController.text,
                              price: _priceController.text,
                            ),
                          ),
                        ),
                    isLoading: state is AnnouncementAddLoading,
                    child: const Text('ADD'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
  }
}
