//
//  NSString+Trimming.m
//  Classes
//
//  Created by Steven Sherry on 1/22/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import "NSString+Trimming.h"

@implementation NSString (Trimming)
- (NSString*)ph_stringByTrimming {
  return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
@end
