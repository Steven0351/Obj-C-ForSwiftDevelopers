//
//  main.m
//  Nullability
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Person *person = [[Person alloc]
                      initWithName:@"Taylor"];
    NSString *greeting = [person fetchGreetingForTime:@"morning"];
    NSLog(@"%@", greeting);
  }
  return 0;
}
