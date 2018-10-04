import Vapor

/// Controls basic CRUD operations on `MakeSchool`s.
final class MakeSchoolController {
    /// Returns a list of all `MakeSchool object`s.
    func index(_ req: Request) throws -> Future<[MakeSchool]> {
        return MakeSchool.query(on: req).all()
    }
    
    /// Saves a decoded `Unconfigured` to the database.
    func create(_ req: Request) throws -> Future<MakeSchool> {
        return try req.content.decode(MakeSchool.self).flatMap({ (makeObj) in
            return makeObj.save(on: req)
        })
    }
    
    /// Deletes a parameterized `Unconfigured`.
    func delete(_ req: Request) throws -> Future<HTTPStatus> {
        return try req.parameters.next(MakeSchool.self).flatMap({ (makeObj) in
            return makeObj.delete(on: req)
        }).transform(to: .ok)
    }
}
