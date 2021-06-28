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
