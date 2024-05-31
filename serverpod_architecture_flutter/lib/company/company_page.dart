import 'package:flutter/material.dart';
import 'package:serverpod_architecture_client/serverpod_architecture_client.dart';

import '../main.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  final EndpointCompany endpointCompany = client.company;
  final List<Company> companies = [];

  @override
  void initState() {
    super.initState();
    _loadCompanies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Company Page')),
      body: CallbackShortcuts(
        bindings: <ShortcutActivator, VoidCallback>{
          const CharacterActivator('r', control: true): () {
            _loadCompanies();
          },
          const CharacterActivator('n', control: true): () {
            _createCompany();
          },
          const CharacterActivator('d', control: true): () {
            if (companies.isNotEmpty) _deleteCompany(companies.first);
          }
        },
        child: Focus(
          autofocus: true,
          child: RefreshIndicator(
            onRefresh: _loadCompanies,
            child: ListView.builder(
              itemCount: companies.length,
              itemBuilder: (BuildContext context, int index) {
                final Company company = companies.elementAt(index);

                return ListTile(
                  leading: const FlutterLogo(),
                  title: Text(company.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteCompany(company),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createCompany,
        tooltip: 'Create Company',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<List<Company>> _loadCompanies() =>
      endpointCompany.getAllCompanies().then((value) {
        companies.clear();
        setState(() {
          companies.addAll(value);
        });

        return value;
      });

  Future<String?> _createCompany() => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Enter Company Name'),
          content: TextField(
            autofocus: true,
            onSubmitted: Navigator.of(context, rootNavigator: true).pop,
          ),
        ),
      ).then((String? value) {
        if (value != null && value.isNotEmpty) {
          endpointCompany.createCompany(Company(name: value)).then((value) {
            setState(() {
              companies.add(value);
            });
          });
        }

        return value;
      });

  Future<int> _deleteCompany(Company company) =>
      endpointCompany.deleteCompany(company).then((value) {
        setState(() {
          companies.remove(company);
        });

        return value.id!;
      });
}
