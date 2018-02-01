//
//  SFQuote.h
//  Sci-FiQuotes
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface SFQuote : NSObject

@property NSString *text;
@property NSString *person;

- (nullable instancetype)initWithLine:(NSString*)line;

@end
NS_ASSUME_NONNULL_END
