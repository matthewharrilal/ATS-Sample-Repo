import FluentPostgreSQL
import Vapor

/// A single entry of a Todo list.
final class Unconfigured: PostgreSQLModel {
    // Better Do This: Configurable Class ==> Let's get some properties!
    
    
}

/// Better do this: Migrate Uncofigured model as schema


/// Allows `Todo` to be encoded to and decoded from HTTP messages.
extension Todo: Content { }

/// Allows `Todo` to be used as a dynamic parameter in route definitions.
extension Todo: Parameter { }
