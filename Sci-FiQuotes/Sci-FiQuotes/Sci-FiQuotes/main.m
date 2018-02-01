//
//  main.m
//  Sci-FiQuotes
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SFApp.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
    NSString *desktopPath = [paths objectAtIndex:0];
    
    SFApp *app = [[SFApp alloc] initWithFile:[desktopPath stringByAppendingPathComponent:@"quotes.txt"]];
    [app printQuote];
  }
  return 0;
}
