//
//  SFApp.h
//  Sci-FiQuotes
//
//  Created by Steven Sherry on 1/24/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SFQuote.h"

NS_ASSUME_NONNULL_BEGIN
@interface SFApp : NSObject

@property NSMutableArray<SFQuote *> *quotes;
- (instancetype)initWithFile:(NSString*)filename;
- (void)printQuote;
@end
NS_ASSUME_NONNULL_END
