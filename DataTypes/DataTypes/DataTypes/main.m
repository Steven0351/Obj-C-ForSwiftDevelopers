//
//  main.m
//  DataTypes
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Strings
    NSInteger number = 42;
    NSString *output = [NSString stringWithFormat:@"You picked %ld", (long)number];
    NSLog(@"%@", output);
    
    output = [[NSString alloc] initWithFormat:@"You picked %ld", (long)number];
    NSLog(@"%@", output);
    
    //  Error:  NSMutableString *mutable = @"Hello";
    NSString *hello = [@"Hello" mutableCopy];
    hello = [NSMutableString stringWithFormat:@"..."];
    //  Allocates memory without assignment:  NSString *longString = [NSMutableString stringWithCapacity:4096];
    NSMutableString *first = [@"My string" mutableCopy];
    //  Creates an immutable copy:  NSString *second = [first copy];
    NSString *second = first;
    [first setString:@"Something else"];
    NSLog(@"%@", second);
    
    // Numbers
//    NSNumber *ten = [NSNumber numberWithInteger:10];
//    float floatTen = [ten floatValue];
//
//    NSNumber *integerTen = @10;
//    NSNumber *booleanTrue = @YES;
//    NSNumber *doublePi = @M_PI;
    
    // Arrays
    NSArray *villains = @[@"Weeping Angels", @"Cybermen", @"Daleks", @"Vashta Nerada"];
    for (NSString *villain in villains) {
      NSLog(@"Can the Doctor defeat the %@? Yes he can!", villain);
    }
    // Reverse looping
    for (NSString *villain in [villains reverseObjectEnumerator]) {
      NSLog(@"Can the Doctor defeat the %@? Yes he can!", villain);
    }
    
    // Subscripting - introduced after 2012
    NSLog(@"The %@ are my favorite villains.", villains[2]);
    
    // Subscripting - standard 2012 and earlier
    NSLog(@"The %@ are my favorite villains.", [villains objectAtIndex:2]);
    
    // Basic array usage
    NSLog(@"The Doctor faced %ld villains in that episode.", (long)[villains count]);
    NSLog(@"Daleks are villain number %ld", (long)[villains indexOfObject:@"Daleks"]);
    NSLog(@"The second villain was the %@.", [villains objectAtIndex:1]);
    NSLog(@"The Doctor conquered these villains: %@.", [villains componentsJoinedByString:@", "]);
    
  }
  return 0;
}
