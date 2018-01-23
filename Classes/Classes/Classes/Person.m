//
//  Person.m
//  Classes
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import "Person.h"

@interface Person ()
@property (readwrite) NSString *name;
@end

@implementation Person

@synthesize name = _name;

- (instancetype)initWithName:(NSString*)name {
  if (self = [super init]) {
    self.name = name;
  }
  return self;
}

- (NSString*)name {
  NSLog(@"Reading name!");
  return _name;
}

- (void)setName:(NSString*)newName {
  NSLog(@"Writing name!");
  _name = newName;
}

- (void)printGreeting {
  // This is syntactic sugar
  NSLog(@"Hello, %@!", self.name);
  // For this
  NSLog(@"Hello, %@!", [self name]);
  // Also possible to do this (accessing the synthesized ivar directly)
  NSLog(@"Hello, %@!", _name);
}

- (void)printGreeting: (NSString*)greeting {
  NSLog(@"%@", greeting);
}

- (void)printGreetingTo: (NSString*)name atTimeOfDay:(NSString*)time {
  if ([time isEqualToString:@"morning"]) {
    NSLog(@"Good morning, %@", name);
  } else {
    NSLog(@"Good evening, %@", name);
  }
}

- (NSDictionary*)fetchGreetingTo: (NSString*)name atTimeOfDay:(NSString*)time {
  if ([time isEqualToString:@"morning"]) {
    return @{
             @"English": [NSString stringWithFormat:@"Good morning, %@", name],
             @"French": [NSString stringWithFormat:@"Bonjour, %@", name]
             };
  } else {
    return @{
             @"English": [NSString stringWithFormat:@"Good evening, %@", name],
             @"French": [NSString stringWithFormat:@"Bonsoir, %@", name]
             };
  }
}

+ (void)genericGreeting {
  NSLog(@"Greetings, earthlings");
}

+ (instancetype)personWithName:(NSString*)name {
  return [[self alloc] initWithName:name];
}
@end
