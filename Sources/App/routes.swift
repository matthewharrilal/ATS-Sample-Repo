import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Better do this: Register three more independent routes
    router.get { req in
        return "It works!"
    }
    router.get("ogErik") { (req)  in
        return "Erik Perez for Perezident"
    }
    
    router.get("adriana") { (req)  in
        return "Adriana is an instructor"
    }
    
    router.get("egon") { (req) in
        return "Egon Targarayean"
    }
    
    
   

    // Better do this: Configure your controller's routes
    let makeSchool = 
    
}
