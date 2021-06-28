// KeychainStore.m

//#import "KeychainStore.h"

#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(KeychainStore, NSObject)

//RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
//{
//    // TODO: Implement some actually useful functionality
//    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
//}

RCT_EXTERN_METHOD(clear:(NSString *)accessGroup callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(deleteItem:(NSString *)key accessGroup:(NSString *)accessGroup callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(setItem:(NSString *)key value:(NSString *)value accessGroup:(NSString *)accessGroup callback:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(getItem:(NSString *)key accessGroup:(NSString *)accessGroup callback:(RCTResponseSenderBlock)callback)

@end
