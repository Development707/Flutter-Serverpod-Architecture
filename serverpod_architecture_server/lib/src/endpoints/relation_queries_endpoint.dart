import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class RelationQueriesEndpoint extends Endpoint {
  /// Include relational data
  Future<Employee?> include(Session session, int employeeId) {
    return Employee.db.findById(
      session,
      employeeId,
      include: Employee.include(
        address: Address.include(),
      ),
    );
  }

  /// Nested includes
  Future<Employee?> nestedInclude(Session session, int employeeId) {
    return Employee.db.findById(
      session,
      employeeId,
      include: Employee.include(
        address: Address.include(),
        company: Company.include(
          address: Address.include(),
        ),
      ),
    );
  }

  /// Include relational lists
  Future<Company?> includeLists(Session session, int employeeId) {
    return Company.db.findById(
      session,
      employeeId,
      include: Company.include(
        workers: Employee.includeList(),
      ),
    );
  }

  /// Nested includes
  Future<Company?> nestedIncludeLists(Session session, int employeeId) {
    return Company.db.findById(
      session,
      employeeId,
      include: Company.include(
        workers: Employee.includeList(
          include: Employee.include(
            address: Address.include(),
          ),
        ),
      ),
    );
  }

  /// Filter
  Future<Company?> filter(Session session, int employeeId) {
    return Company.db.findById(
      session,
      employeeId,
      include: Company.include(
        workers: Employee.includeList(where: (t) => t.name.ilike('a%')),
      ),
    );
  }

  /// Sort
  Future<Company?> sort(Session session, int employeeId) {
    return Company.db.findById(
      session,
      employeeId,
      include: Company.include(
        workers: Employee.includeList(orderBy: (t) => t.name),
      ),
    );
  }

  /// Pagination
  Future<Company?> pagination(Session session, int employeeId) {
    return Company.db.findById(
      session,
      employeeId,
      include: Company.include(
        workers: Employee.includeList(
          limit: 100,
          offset: 10,
        ),
      ),
    );
  }

  /// Attach Single Row.
  /// Link an individual employee to a company.
  Future<void> attachSingleRow(
    Session session,
    int employeeId,
    int companyId,
  ) async {
    Company? company = await Company.db.findById(session, companyId);
    Employee? employee = await Employee.db.findById(session, employeeId);

    return Company.db.attachRow.workers(session, company!, employee!);
  }

  /// Bulk Attach Rows.
  /// For scenarios where you need to associate multiple employees with
  /// a company at once, use the bulk attach method.
  Future<void> bulkAttachRows(
    Session session,
    int employeeId,
    int companyId,
  ) async {
    Company? company = await Company.db.findById(session, companyId);
    Employee? employee = await Employee.db.findById(session, employeeId);

    await Company.db.attach.workers(session, company!, [employee!]);
  }

  /// Detach Single Row.
  /// To remove the association between an employee and a company.
  Future<void> detachSingleRow(
    Session session,
    int employeeId,
  ) async {
    Employee? employee = await Employee.db.findById(session, employeeId);
    return Company.db.detachRow.workers(session, employee!);
  }

  /// Bulk Detach Rows.
  /// In cases where you need to remove associations for multiple employees
  /// simultaneously, use the bulk detach method.
  Future<void> bulkDetachRows(
    Session session,
    int employeeId,
  ) async {
    Employee? employee = await Employee.db.findById(session, employeeId);
    return Company.db.detach.workers(session, [employee!]);
  }

  /// Transactions
  Future<bool> transaction(
    Session session,
    Employee employee,
    Company company,
  ) async {
    return session.db.transaction((Transaction transaction) async {
      // Do some database queries here.
      await Company.db.insertRow(session, company, transaction: transaction);
      await Employee.db.insertRow(session, employee, transaction: transaction);

      // Optionally return a value.
      return true;
    });
  }
}
