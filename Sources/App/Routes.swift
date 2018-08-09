import Vapor

final class Routes: RouteCollection {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        /// GET /
        builder.get { req in
            return try self.view.make("welcome")
        }

        /// GET /about
        builder.get("about") { req in
            return try self.view.make("about")
        }
        
        /// GET /apps
        builder.get("apps") { req in
            return try self.view.make("apps")
        }
    }
}
