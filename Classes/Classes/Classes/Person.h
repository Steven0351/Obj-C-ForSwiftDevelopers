//
//  Person.h
//  Classes
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (readonly) NSString *name;
- (instancetype)initWithName:(NSString*)name;
- (void)printGreeting;
- (void)printGreeting: (NSString*)greeting;
- (void)printGreetingTo: (NSString*)name atTimeOfDay:(NSString*)time;
- (NSDictionary*)fetchGreetingTo: (NSString*)name atTimeOfDay:(NSString*)time;
+ (void)genericGreeting;
+ (instancetype)personWithName:(NSString*)name;
@end
