import Vapor

/// Controls basic CRUD operations on `Todo`s.
final class UnconfiguredController {
    /// Returns a list of all `Unconfigured`s.
    func index(_ req: Request) throws -> Future<[?]> {
        // Better Do This :Index Functionality
    }

    /// Saves a decoded `Unconfigured` to the database.
    func create(_ req: Request) throws -> Future<?> {
        // Better Do This: Create Functionality
    }

    /// Deletes a parameterized `Unconfigured`.
    func delete(_ req: Request) throws -> Future<?> {
        // Better Do This: Delete Functionality
    }
}
