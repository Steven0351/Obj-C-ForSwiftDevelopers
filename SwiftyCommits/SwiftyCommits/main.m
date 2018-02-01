//
//  main.m
//  SwiftyCommits
//
//  Created by Steven Sherry on 1/31/18.
//  Copyright © 2018 Steven Sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SCApp.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *repo = @"apple/swift";
    NSString *author = @"Arnold Schwaighofer";
    if (argc == 2) {
      repo = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
      if ([repo containsString:@"/"]) {
        if ([[repo componentsSeparatedByString:@"/"]count] > 2) {
          NSLog(@"Excessive /'s in repository name");
          exit(0);
        }
      } else {
        NSLog(@"No / in repository name");
        exit(0);
      }
     
      SCApp *app = [SCApp new];
      [app fetchCommitsForRepo:repo fromCommitter:author];
    }
  }
  return 0;
}
