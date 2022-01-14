#if swift(>=4.0)
@objcMembers public class WalmartItemAPI: NSObject {
    static let kRequestAddItem = "com.ecz.ern.api.request.addItem"
    static let kRequestAddUser = "com.ecz.ern.api.request.addUser"
    static let kRequestClickDetail = "com.ecz.ern.api.request.clickDetail"
    static let kRequestFindItems = "com.ecz.ern.api.request.findItems"
    static let kRequestGetUsers = "com.ecz.ern.api.request.getUsers"
    static let kEventItemAdded = "com.ecz.ern.api.event.itemAdded"

    public lazy var events: WalmartItemAPIEvents = {
        WalmartItemEvents()
    }()

    public lazy var requests: WalmartItemAPIRequests = {
        WalmartItemRequests()
    }()
}

@objcMembers public class WalmartItemAPIEvents: NSObject {
    public func addItemAddedEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeItemAddedEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventItemAdded(itemId _: String) {
        assertionFailure("should override")
    }
}

@objcMembers public class WalmartItemAPIRequests: NSObject {
    public func registerAddItemRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerAddUserRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerClickDetailRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerFindItemsRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerGetUsersRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func unregisterAddItemRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterAddUserRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterClickDetailRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFindItemsRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterGetUsersRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func addItem(item _: Item, responseCompletionHandler _: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func addUser(item _: Item, responseCompletionHandler _: @escaping (Bool?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func clickDetail( responseCompletionHandler _: @escaping (Item?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func findItems(limit _: Int, responseCompletionHandler _: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func getUsers(limit _: Int, responseCompletionHandler _: @escaping ([Item]?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }
}

#else

public class WalmartItemAPI: NSObject {
    static let kRequestAddItem = "com.ecz.ern.api.request.addItem"
    static let kRequestAddUser = "com.ecz.ern.api.request.addUser"
    static let kRequestClickDetail = "com.ecz.ern.api.request.clickDetail"
    static let kRequestFindItems = "com.ecz.ern.api.request.findItems"
    static let kRequestGetUsers = "com.ecz.ern.api.request.getUsers"
    static let kEventItemAdded = "com.ecz.ern.api.event.itemAdded"

    public lazy var events: WalmartItemAPIEvents = {
        WalmartItemEvents()
    }()

    public lazy var requests: WalmartItemAPIRequests = {
        WalmartItemRequests()
    }()
}

public class WalmartItemAPIEvents: NSObject {
    public func addItemAddedEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeItemAddedEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventItemAdded(itemId _: String) {
        assertionFailure("should override")
    }
}

public class WalmartItemAPIRequests: NSObject {
    public func registerAddItemRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerAddUserRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerClickDetailRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerFindItemsRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerGetUsersRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func unregisterAddItemRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterAddUserRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterClickDetailRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFindItemsRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterGetUsersRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func addItem(item _: Item, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func addUser(item _: Item, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func clickDetail(responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func findItems(limit _: Int, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func getUsers(limit _: Int, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }
}
#endif
