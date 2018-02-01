//
//  Person.h
//  Nullability
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *name;
- (instancetype)initWithName:(NSString*)name;
- (NSString*)fetchGreetingForTime:(NSString*)time;

@end

NS_ASSUME_NONNULL_END
