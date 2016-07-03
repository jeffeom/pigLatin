//
//  NSString+stringByPigLatinization.m
//  PigLatin
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "NSString+stringByPigLatinization.h"

@implementation NSString (stringByPigLatinization)

-(NSString *)stringByPigLatinization{
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSMutableArray *characters = [[NSMutableArray alloc] init];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSString *substring;
    // prints i
    NSString *substringFirst;
    // prints ips
    NSString *substringLast;
    // prints ch
    NSString *pigLatinString;
    // prints ipsch
    NSString *addAtLast = @"ay";
//    NSMutableString *pigLatinStringLast = [pigLatinString stringByAppendingString:addAtLast];
    NSString *result = [[NSString alloc] init];
    
    for (NSString *word in words){
    //tokenization
    // "Kale Chips"
    // to "Kale" "Chips"
        for( int i = 0; i < [word length]; i++){
            [characters addObject:[NSString stringWithFormat:@"%c",[word characterAtIndex:i]]];
        }
        
        NSRange myRange = [word rangeOfCharacterFromSet:vowels];
        NSRange myRangeLast = NSMakeRange(myRange.location, word.length - myRange.location);
        NSRange myRangeFirst = NSMakeRange(0, myRange.location);
        
        substring = [word substringWithRange:myRange];
        // prints i
        substringFirst = [word substringWithRange:myRangeLast];
        // prints ips
        substringLast = [word substringWithRange:myRangeFirst];
        // prints ch
        pigLatinString = [substringFirst stringByAppendingString: substringLast];
//        pigLatinString = [pigLatinString stringByAppendingString: @" "];
        // prints ipsch
//        addAtLast = @"ay";
//        
//        pigLatinStringLast = [pigLatinString stringByAppendingString:addAtLast];
        
//        NSLog(@"%@", pigLatinString);
        result = [result stringByAppendingString:pigLatinString];
        
    }
    return [result stringByAppendingString: addAtLast];
}

@end

