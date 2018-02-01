//
//  SCApp.h
//  SwiftyCommits
//
//  Created by Steven Sherry on 1/31/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface SCApp : NSObject
- (void)fetchCommitsForRepo:(NSString *)repo fromCommitter:(nullable NSString *)author;
@end
NS_ASSUME_NONNULL_END
