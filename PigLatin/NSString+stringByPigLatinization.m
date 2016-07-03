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
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSString *substringFirst;
    NSString *substringLast;
    NSString *pigLatinString;
    NSString *addAtLast = @"ay";
    NSString *result = [[NSString alloc] init];
    
    for (NSString *word in words){
    //tokenization
    // "Kale Chips"
    // to "Kale" "Chips"
        
        NSRange myRange = [word rangeOfCharacterFromSet:vowels];
        NSRange myRangeLast = NSMakeRange(myRange.location, word.length - myRange.location);
        NSRange myRangeFirst = NSMakeRange(0, myRange.location);
        
        substringFirst = [word substringWithRange:myRangeLast];
        // prints ips
        substringLast = [word substringWithRange:myRangeFirst];
        // prints ch
        pigLatinString = [substringFirst stringByAppendingString: substringLast];
        
        result = [result stringByAppendingString:pigLatinString];
        result = [result stringByAppendingString:addAtLast];
        result = [result stringByAppendingString:@" "];
    
    }
    return result;
}

@end

