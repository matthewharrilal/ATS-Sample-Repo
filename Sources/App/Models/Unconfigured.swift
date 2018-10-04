import FluentPostgreSQL
import Vapor

/// A single entry of a Todo list.
final class MakeSchool: PostgreSQLModel {
    var students: Int // A count of students
    var instructors: Int
    var hasBuilding: Bool
    var isOfficial: Bool
    
    init(students: Int, instructors: Int, hasBuilding: Bool, isOfficial: Bool) {
        self.students = students
        self.instructors = instructors
        self.hasBuilding = hasBuilding
        self.isOfficial = isOfficial
    }
    
}

extension MakeSchool: Migration { }

/// Allows `MakeSchool` to be encoded to and decoded from HTTP messages.
extension MakeSchool: Content { }

/// Allows `MakeSchool` to be used as a dynamic parameter in route definitions.
extension MakeSchool: Parameter { }
