//
//  IjinbuUser.h
//  IjinbuNetworkDemo
//
//  Created by ciyouzen on 2017/4/6.
//  Copyright © 2017年 dvlproad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IjinbuUser : NSObject

+ (instancetype)current;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *imName;
@property (strong, nonatomic) NSString *imPassword;

@property (copy, nonatomic) NSString *token;

- (instancetype)initWithHisDictionary:(NSDictionary *)dictionary;

@end
