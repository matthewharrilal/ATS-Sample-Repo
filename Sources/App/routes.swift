import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Better do this: Register three more independent routes
    router.get { req in
        return "It works!"
    }
    
   

    // Better do this: Configure your controller's routes
    
}
