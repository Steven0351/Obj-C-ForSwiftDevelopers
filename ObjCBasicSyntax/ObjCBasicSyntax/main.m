//
//  main.m
//  ObjCBasicSyntax
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int i = 10;
    
    // Basic if statement
    
    if (i == 10) {
      NSLog(@"Hello World");
    }
    
    // Switch statement
    
    switch (i) {
      case 10: {
        int foo = 1;
        NSLog(@"It's something else");
      }
    }
    
    switch (i) {
      case 10:
        NSLog(@"It's something else");
        int foo = 1;
    }
    
    i = 20;
    
    switch (i) {
      case 1 ... 30:
        NSLog(@"It's between 1 and 30!");
        break;
      default:
        NSLog(@"It's something else");
    }
    
    switch (i) {
      case 20:
        NSLog(@"It's 20!");
        break;
      case 40:
        NSLog(@"It's 40!");
        break;
      case 60:
        NSLog(@"It's 60!");
        break;
      default:
        NSLog(@"It's something else");
    }
    
    // For loops
    
    NSArray *names = @[@"Laura", @"Janet", @"Kim"];
    for (NSString *name in names) {
      NSLog(@"Hello, %@", name);
    }
    
    for (int i = 1; i <= 5; i++) {
      NSLog(@"%d * %d is %d", i, i, i * i);
    }
    
    NSString *str = @"Reject common sense to make the impossible possible!";
    NSArray *array = @[@"Hello", @"World"];
    NSLog(@"Hello, World!");
    
    // Nil coalescing
    
    NSString *name = nil;
    NSLog(@"Hello, %@!", name ?: @"Anonymous");
    
    // Pointers
    
    NSString *first = @"Hello";
    NSLog(@"%p", first);
    first = @"World";
    NSLog(@"%p", first);
    
    // Format specifiers
    NSLog(@"%.2f", M_PI);
    
    NSInteger j = 10;
    NSLog(@"%ld", (long)j);
  }
  return 0;
}
