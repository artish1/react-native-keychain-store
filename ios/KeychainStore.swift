//
//  KeychainStoreManager.swift
//  KeychainStore
//
//  Created by Mark Artishuk on 6/22/21.
//

import Foundation
import KeychainSwift

@objc (KeychainStore)
class KeychainStore : NSObject {
  
  @objc
  func clear(_ accessGroup:String, callback: RCTResponseSenderBlock){
    let keychain = KeychainSwift()
    if(accessGroup.count > 0) {
      keychain.accessGroup = accessGroup
    }
    keychain.clear()
    callback(["Successfully cleared keychain"])
  }
  
  @objc
  func setItem(_ key: String, value: String, accessGroup:String, callback: RCTResponseSenderBlock) -> Void {
    let keychain = KeychainSwift()
    if(accessGroup.count > 0) {
      keychain.accessGroup = accessGroup
    }
    keychain.set(value, forKey: key)
    callback(["Successfully set keychain. Key: " + key + ", Value: " +  value])
  }

  
  @objc
  func getItem(_ key: String, accessGroup:String, callback: RCTResponseSenderBlock) -> Void {
    let keychain = KeychainSwift()
    if(accessGroup.count > 0) {
      keychain.accessGroup = accessGroup
    }
    let value = keychain.get(key)
    callback([value as Any])
  }
  
  @objc
  func deleteItem(_ key:String, accessGroup:String, callback: RCTResponseSenderBlock) -> Void {
    let keychain = KeychainSwift()
    if(accessGroup.count > 0) {
      keychain.accessGroup = accessGroup
    }
    keychain.delete(key)
    callback(["Successfully deleted item"])
  }
}
