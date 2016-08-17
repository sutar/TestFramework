//
//  TestClass.h
//  TestFramework
//
//  Created by Xin Wang on 7/13/16.
//  Copyright © 2016 Xin Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject

- (void)echo;

- (void)getIPAddress:(void (^)(NSString *ipAddress))completion;

@end
