#if swift(>=4.0)
@objcMembers public class EnNavigationEvents: EnNavigationAPIEvents {
    public override func addNavEventEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID? {
        let listenerProcessor = EventListenerProcessor(
            eventName: EnNavigationAPI.kEventNavEvent,
            eventPayloadClass: NavEventData.self,
            eventListener: eventListener
        )

        return listenerProcessor.execute()
    }
    public override func addOnNavButtonClickEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID? {
        let listenerProcessor = EventListenerProcessor(
            eventName: EnNavigationAPI.kEventOnNavButtonClick,
            eventPayloadClass: String.self,
            eventListener: eventListener
        )

        return listenerProcessor.execute()
    }

    public override func removeNavEventEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }

    public override func removeOnNavButtonClickEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }

    public override func emitEventNavEvent(eventData: NavEventData) {
        let eventProcessor = EventProcessor(
            eventName: EnNavigationAPI.kEventNavEvent,
            eventPayload: eventData
        )

        eventProcessor.execute()
    }

    public override func emitEventOnNavButtonClick(buttonId: String) {
        let eventProcessor = EventProcessor(
            eventName: EnNavigationAPI.kEventOnNavButtonClick,
            eventPayload: buttonId
        )

        eventProcessor.execute()
    }
}

#else

public class EnNavigationEvents: EnNavigationAPIEvents {
    public override func addNavEventEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID? {
        let listenerProcessor = EventListenerProcessor(
            eventName: EnNavigationAPI.kEventNavEvent,
            eventPayloadClass: NavEventData.self,
            eventListener: eventListener
        )

        return listenerProcessor.execute()
    }
    public override func addOnNavButtonClickEventListener(eventListener: @escaping ElectrodeBridgeEventListener) -> UUID? {
        let listenerProcessor = EventListenerProcessor(
            eventName: EnNavigationAPI.kEventOnNavButtonClick,
            eventPayloadClass: String.self,
            eventListener: eventListener
        )

        return listenerProcessor.execute()
    }

    public override func removeNavEventEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }

    public override func removeOnNavButtonClickEventListener(uuid: UUID) -> ElectrodeBridgeEventListener? {
        return ElectrodeBridgeHolder.removeEventListener(uuid)
    }

    public override func emitEventNavEvent(eventData: NavEventData) {
        let eventProcessor = EventProcessor(
            eventName: EnNavigationAPI.kEventNavEvent,
            eventPayload: eventData
        )

        eventProcessor.execute()
    }

    public override func emitEventOnNavButtonClick(buttonId: String) {
        let eventProcessor = EventProcessor(
            eventName: EnNavigationAPI.kEventOnNavButtonClick,
            eventPayload: buttonId
        )

        eventProcessor.execute()
    }
}
#endif
