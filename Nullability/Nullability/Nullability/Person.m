//
//  Person.m
//  Nullability
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
  if (self = [super init]) {
    self.name = name;
  }
  return self;
}

- (NSString*)fetchGreetingForTime:(NSString *)time {
  NSString *str = nil;
  self.name = str;
  return [NSString stringWithFormat:@"Good %@, %@!", time, self.name];
}

@end
