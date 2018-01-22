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
    
    // Mutable Arrays
    NSMutableArray *mutableVillains = [@[@"Weeping Angels", @"Cybermen", @"Daleks", @"Vashta Nerada"] mutableCopy];
    [mutableVillains insertObject:@"The Silence" atIndex:1];
    [mutableVillains removeObjectAtIndex:3];
    [mutableVillains removeAllObjects];
    
    // Sorting
    NSArray *sorted = [villains sortedArrayUsingSelector:@selector(compare:)];
    for (NSString *villain in sorted) {
      NSLog(@"%@", villain);
    }
    
    // Functional Techniques
    
    [villains enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
      NSLog(@"Can the Doctor defeat the %@? Yes he can!", obj);
    }];
    
    [villains enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
      if ([obj isEqualToString:@"Weeping Angels"]) {
        NSLog(@"Can the Doctor defeat the %@? Oh, apparently not.", obj);
        *stop = true;
      } else {
        NSLog(@"Can the Doctor defeat the %@? Yes he can!", obj);
      }
    }];
    
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
      return [[evaluatedObject componentsSeparatedByString:@" "] count] == 2;
    }];
    
    NSArray *twoWordVillains = [villains filteredArrayUsingPredicate:predicate];
    NSLog(@"The two word villains are %@", [twoWordVillains componentsJoinedByString:@", "]);
    
    // Key Paths
    NSArray *numbers = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, nil];
    NSNumber *sum = [numbers valueForKeyPath:@"@sum.self"];
    NSNumber *avg = [numbers valueForKeyPath:@"@avg.self"];
    NSNumber *min = [numbers valueForKeyPath:@"@min.self"];
    NSNumber *max = [numbers valueForKeyPath:@"@max.self"];
    NSLog(@"Total: %ld", (long)[sum integerValue]);
    NSLog(@"Avg: %ld", (long)[avg integerValue]);
    NSLog(@"Min: %ld", (long)[min integerValue]);
    NSLog(@"Max: %ld", (long)[max integerValue]);
    
    // Dictionaries
//    NSDictionary *ships = @{
//                            @"Serenity": @"Firefly",
//                            @"Enterprise": @"Star Trek",
//                            @"Executor": @"Star Wars"
//                            };
    NSDictionary *ships = [NSDictionary dictionaryWithObjectsAndKeys:
              @"Serenity", @"Firefly",
              @"Enterprise", @"Star Trek",
              @"Executor", @"Star Wars"
              , nil];
    
    for (NSString *key in ships) {
      NSLog(@"The ship %@ features in %@", key, ships[key]);
    }
    
    // Generics
    NSMutableArray<NSString *> *names = [NSMutableArray arrayWithCapacity:4];
    [names addObject:@"Sophie"];
    // These don't work
    // Add an incompatible object:   [names addObject:@42];
    // Assign incompatible pointer:   NSNumber *number = names[0];
    // But this does:
//    NSArray<NSNumber *> *numbers2 = @[@42, @556, @69, @3.141];
//    for (NSString *number in numbers2) {
//      NSLog(@"%@ is %ld letters.", number, [number length]);
//    }
    
    // NSObject
    NSMutableArray *people = [@[@"Taylor Swift", @"Adele Adkins"] mutableCopy];
    
    if ([people isKindOfClass:[NSArray class]]) {
      if ([people respondsToSelector:@selector(removeAllObjects)]) {
        [people performSelector:@selector(removeAllObjects)];
      }
    }
    
    
  }
  return 0;
}
