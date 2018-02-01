//
//  SFApp.m
//  Sci-FiQuotes
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import "SFApp.h"

@implementation SFApp

- (instancetype)initWithFile:(NSString *)filename {
  if (self = [super init]) {
    NSError *error;
    NSString *contents = [NSString stringWithContentsOfFile:filename encoding:nil error:&error];
    
    if (error != nil) {
      NSLog(@"Fatal error: %@", [error localizedDescription]);
      exit(0);
    }
    
    NSArray *lines = [contents componentsSeparatedByString:@"\n"];
    self.quotes = [NSMutableArray arrayWithCapacity:[lines count]];
    for (NSString *line in lines) {
      SFQuote *quote = [[SFQuote alloc] initWithLine:line];
      if (quote != nil) {
        [self.quotes addObject:quote];
      }
    }
  }
  return self;
}

- (void)printQuote {
  NSInteger random = arc4random_uniform((u_int32_t)[self.quotes count]);
  SFQuote *selected = self.quotes[random];
  printf("%s\n", [selected.text cStringUsingEncoding:NSUTF8StringEncoding]);
  printf("\t - %s\n", [selected.person cStringUsingEncoding:NSUTF8StringEncoding]);
}

@end
