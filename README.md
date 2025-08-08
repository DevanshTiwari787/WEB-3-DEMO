# 🎟️ EventTicket - NFT-Based Event Ticketing on Aptos

## 📘 Description

**EventTicket** is a Move-based smart contract deployed on the Aptos blockchain that allows event organizers to mint and manage NFT-based tickets for their events. Each event corresponds to an NFT collection, and each ticket is a unique token under that collection. This solution provides a transparent, secure, and verifiable way to manage event ticket distribution on-chain.

Built for organizers and users who want to eliminate ticket fraud, scalping, and counterfeits, EventTicket ensures that every ticket is authentic and traceable directly on the Aptos blockchain.

---

## 🌟 Vision

To **revolutionize event ticketing** using blockchain technology by:
- Ensuring every ticket is unique, verifiable, and tamper-proof.
- Empowering event organizers to manage ticket distribution transparently.
- Providing attendees full ownership of their tickets in the form of NFTs.

---

## 🔮 Future Scope

The contract is modular and scalable. Future upgrades and ideas include:

- ✅ **QR Code Integration**: Scan-to-verify ticket ownership at event gates.
- ✅ **Ticket Resale Marketplace**: Enable secure secondary sales with royalty enforcement.
- ✅ **Tiered Access**: Mint different types of tickets like VIP, Regular, etc.
- ✅ **Event Attendance Rewards**: Airdrop badges or tokens to attendees post-event.
- ✅ **Admin Dashboard**: A front-end interface for organizers to manage events and ticket sales visually.
- ✅ **IPFS Integration**: Host metadata (images, details) on decentralized storage.

---

## 📍 Contract Address

> **Deployed on Aptos Testnet**  
> `0xYourContractAddressHere`

_(Replace with your actual deployed contract address)_

---

## 📂 Modules & Functions

### Module: `EventTicket`

#### ✅ `create_event`
Creates an event and its corresponding NFT collection.

#### ✅ `mint_ticket`
Allows a user to mint a ticket NFT under a specified event.

---

## 📜 Example

```move
// Organizer creates an event
EventTicket::create_event(
    &organizer,
    b"DevFest 2025",
    b"A developer conference like no other",
    b"https://example.com/devfest/meta.json",
    500
);

// User mints a ticket
EventTicket::mint_ticket(
    &user,
    @organizer,
    b"DevFest 2025",
    b"Entry Ticket #001",
    b"General Admission",
    b"https://example.com/devfest/ticket001.json"
);
{
  "Result": {
    "transaction_hash": "0xa0e1f4399b2811463a4a0d2076d955e586f1cadc91a920625c35e1130c2c3d5e",
    "gas_used": 2147,
    "gas_unit_price": 100,
    "sender": "f04cb1ab274402cfa3c0cfc73c69bdfea6a7e03482bdb74876e75df775d38ffa",
    "sequence_number": 0,
    "replay_protector": {
      "SequenceNumber": 0
    },
    "success": true,
    "timestamp_us": 1754650145197341,
    "version": 27893195,
    "vm_status": "Executed successfully"
  }
}

<img width="1914" height="982" alt="image" src="https://github.com/user-attachments/assets/722651c8-1ea8-4a78-8a52-f8bdf5ff9ec0" />

