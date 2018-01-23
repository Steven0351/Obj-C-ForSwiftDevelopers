//
//  main.m
//  Classes
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
//    Person *person = [Person new];
//    [person printGreeting:@"Welcome!"];
//    [person printGreetingTo:@"Taylor Swift" atTimeOfDay:@"morning"];
//    NSLog(@"%@", [person fetchGreetingTo:@"Taylor Swift" atTimeOfDay:@"morning"][@"French"]);
//
//    Person *newPerson = [Person new];
    // This is syntactic sugar
//    newPerson.name = @"Taylor";
//    // For this
//    [newPerson setName:@"Taylor"];
//    [newPerson printGreeting];
    Person *person = [[Person alloc]
                      initWithName:@"James"];
    [person printGreeting];
                      
  }
  return 0;
}
