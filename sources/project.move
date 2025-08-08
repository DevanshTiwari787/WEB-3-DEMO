module MyModule::EventTicket {

    use aptos_framework::signer;
    use aptos_token_objects::collection;
    use aptos_token_objects::token;
    use std::option;
    use std::string;

    struct Event has key {
        name: vector<u8>,
        total_tickets: u64,
        tickets_minted: u64,
    }

    public fun create_event(
        organizer: &signer,
        name: vector<u8>,
        description: vector<u8>,
        uri: vector<u8>,
        max_tickets: u64
    ) {
        let collection_constructor_ref = collection::create_unlimited_collection(
            organizer,
            string::utf8(description),
            string::utf8(name),
            option::none(),
            string::utf8(uri)
        );

        move_to(organizer, Event {
            name,
            total_tickets: max_tickets,
            tickets_minted: 0,
        });
    }

    public fun mint_ticket(
        user: &signer,
        event_creator: address,
        collection_name: vector<u8>,
        token_name: vector<u8>,
        token_description: vector<u8>,
        token_uri: vector<u8>
    ) acquires Event {
        let event = borrow_global_mut<Event>(event_creator);
        assert!(event.tickets_minted < event.total_tickets, 1);

        let token_constructor_ref = token::create_named_token(
            user,
            string::utf8(collection_name),
            string::utf8(token_description),
            string::utf8(token_name),
            option::none(),
            string::utf8(token_uri)
        );

        event.tickets_minted = event.tickets_minted + 1;
    }
}
