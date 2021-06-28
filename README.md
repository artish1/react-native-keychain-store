# react-native-keychain-store

## Getting started

`$ npm install react-native-keychain-store --save`

or
`yarn add react-native-keychain-store`

### Mostly automatic installation

`$ react-native link react-native-keychain-store`

## Usage

```javascript
import KeychainStore from "react-native-keychain-store";

// Set key/value pair
const key = "myKey";
const value = "hello world";
const accessGroup = "XXXXXXX.accessGroupName"; // Optional

KeychainStore.setItem(key, value);
KeychainStore.setItem(key, value, accessGroup);

// retrieving an item
let keychainValue = await KeychainStore.getItem(key);
keychainValue = await KeychainStore.getItem(key, accessGroup);
console.log(keychainValue); // "helo world"

// Delete item
KeychainStore.deleteItem(key);
KeychainStore.deleteItem(key, accessGroup);

// Clear all items
KeychainStore.clear();
KeychainStore.clear(accessGroup);
```

All functions return a javascript `Promise`.

## Keychain Sharing

Keychains can be shared across apps so long as they have the same TeamID and access group name.
You can read more about keychain sharing [here](https://developer.apple.com/documentation/security/keychain_services/keychain_items/sharing_access_to_keychain_items_among_a_collection_of_apps)
