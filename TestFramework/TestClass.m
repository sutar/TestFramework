//
//  TestClass.m
//  TestFramework
//
//  Created by Xin Wang on 7/13/16.
//  Copyright © 2016 Xin Wang. All rights reserved.
//

#import "TestClass.h"
#import <AFNetworking/AFNetworking.h>

@implementation TestClass

- (void)echo
{
    NSLog(@"Echo");
}

- (void)getIPAddress:(void (^)(NSString *ipAddress))completion
{
    NSParameterAssert(completion);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://httpbin.org/ip" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completion(responseObject[@"origin"]);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completion(nil);
    }];
}

@end
