import FluentPostgreSQL
import Vapor

/// Called before your application initializes. (IMPORTANT TO UNDERSTAND)
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {
    /// Register providers first
    try services.register(FluentPostgreSQLProvider())

    /// Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    /// Register middleware
    var middlewares = MiddlewareConfig() // Create _empty_ middleware config
    /// middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    services.register(middlewares)
    

    // Better do this: Configure a SQLite database
    let postgresqlConfig = PostgreSQLDatabaseConfig(
        hostname: "127.0.0.1",
        port: 5432,
        username: "matthew",
        database: "AdvancedTech",
        password: nil
    )
    services.register(postgresqlConfig)


    /// Better do this: Configure the unconfigured model
    var migrations = MigrationConfig()
//    migrations.add(model: ?, database: .psql)
    services.register(migrations)

}
