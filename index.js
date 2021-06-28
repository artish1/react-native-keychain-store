import { NativeModules } from "react-native";

function setItem(key, value, accessGroup = "") {
  return new Promise((resolve) => {
    NativeModules.KeychainStore.setItem(key, value, accessGroup, resolve);
  });
}

function getItem(key, accessGroup = "") {
  return new Promise((resolve) => {
    NativeModules.KeychainStore.getItem(key, accessGroup, resolve);
  });
}

function deleteItem(key, accessGroup = "") {
  return new Promise((resolve) => {
    NativeModules.KeychainStore.deleteItem(key, accessGroup, resolve);
  });
}

function clear(accessGroup = "") {
  return new Promise((resolve) => {
    NativeModules.KeychainStore.clear(accessGroup, resolve);
  });
}

const KeychainStore = {
  getItem,
  setItem,
  deleteItem,
  clear,
};

export default KeychainStore;
