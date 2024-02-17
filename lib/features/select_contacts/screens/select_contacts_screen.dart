import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:niteowl/common/widgets/error.dart';
import 'package:niteowl/common/widgets/loader.dart';
import 'package:niteowl/features/select_contacts/controller/select_contact_controller.dart';

class SelectContactScreen extends ConsumerWidget {
  static const String routeName = '/select-contact';
  const SelectContactScreen({super.key});

  void selectContact(
      WidgetRef ref, Contact selectedContact, BuildContext context) {
    ref
        .read(selectContactControllerProvider)
        .selectContact(selectedContact, context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Select contact"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: ref.watch(getContactProvider).when(
            data: (contactList) {
              return ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  final contact = contactList[index];
                  return InkWell(
                    onTap: () => selectContact(
                      ref,
                      contact,
                      context,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: contact.photo == null
                            ? null
                            : CircleAvatar(
                                backgroundImage: MemoryImage(contact.photo!),
                                radius: 30,
                              ),
                        title: Text(
                          contact.displayName,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            error: (error, trace) {
              return ErrorScreen(error: error.toString());
            },
            loading: () => const Loader(),
          ),
    );
  }
}
