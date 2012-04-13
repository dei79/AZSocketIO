//
//  AZSocketIOPacket.h
//  AZSocketIO
//
//  Created by Patrick Shields on 4/7/12.
//  Copyright (c) 2012 Patrick Shields. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    DISCONNECT,
    CONNECT,
    HEARTBEAT,
    MESSAGE,
    JSON_MESSAGE,
    EVENT,
    ACK,
    ERROR,
    NOOP
} MESSAGE_TYPE;

@interface AZSocketIOPacket : NSObject
@property(nonatomic, assign)int type;
@property(nonatomic, strong)NSString *Id;
@property(nonatomic, assign)BOOL ack;
@property(nonatomic, strong)NSString *endpoint;
@property(nonatomic, strong)id data;

- (id)initWithString:(NSString *)packetString;
- (NSString *)encode;
@end

@interface AZSocketIOACKMessage : NSObject
@property(nonatomic, strong)NSString *messageId;
@property(nonatomic, strong)NSArray *args;
- (id)initWithPacket:(AZSocketIOPacket *)packet;
@end