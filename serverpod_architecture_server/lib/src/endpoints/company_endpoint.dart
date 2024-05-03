import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class CompanyEndpoint extends Endpoint {
  Future<List<Company>> getAllCompanies(Session session) async {
    return Company.db.find(session, orderBy: (t) => t.id);
  }

  Future<Company?> getCompany(Session session, int id) async {
    return Company.db.findById(session, id);
  }

  Future<Company> createCompany(Session session, Company company) async {
    return Company.db.insertRow(session, company);
  }

  Future<Company> updateCompany(Session session, Company company) async {
    return Company.db.updateRow(session, company);
  }

  Future<int> deleteCompany(Session session, Company company) async {
    return Company.db.deleteRow(session, company);
  }
}
