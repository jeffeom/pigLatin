//
//  main.m
//  PigLatin
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stringReader.h"
#import "NSString+stringByPigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"lorem ipsum dolor sit amet";
        NSString *myWord = @"chips";
        NSArray *words = [string componentsSeparatedByString:@" "];
        NSMutableArray *characters = [[NSMutableArray alloc] init];
        NSMutableArray *myCharacters = [[NSMutableArray alloc] init];
        NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
        
//        NSString *word;
        
        for (NSString *word in words){
        //tokenization
            for( int i = 0; i < [word length]; i++){
                [characters addObject:[NSString stringWithFormat:@"%c",[word characterAtIndex:i]]];
                
            }
        }
        
        for( int i = 0; i < [myWord length]; i++){
            [myCharacters addObject:[NSString stringWithFormat:@"%c",[myWord characterAtIndex:i]]];
            
        }
        
        NSRange myRange = [myWord rangeOfCharacterFromSet:vowels];
        NSRange myNewRangeLast = NSMakeRange(myRange.location, myWord.length - myRange.location);
        NSRange myNewRangeFirst = NSMakeRange(myRange.location, 2);

        NSString *substring = [myWord substringWithRange:myRange];
        NSString *substring1 = [myWord substringWithRange:myNewRangeLast];
        NSString *substring2 = [myWord substringWithRange:myNewRangeFirst];


        NSLog(@"%i", myRange.location);
        NSLog(@"%@", substring);
        NSLog(@"%@", substring1);
        NSLog(@"%@", substring2);

//        if([characters containsObject:@"i"]){
//            
//        }
        
        
        NSRange range = [string rangeOfString:@"a"];
        // {.location=6, .length=5}
        
//        NSString *substring = [string substringWithRange:range];
//        NSLog(@"%i", range.location);
//        NSLog(@"%@", substring);
//        NSLog(@"%@", words);
//        NSLog(@"%@", characters);
//        NSLog(@"%@", myCharacters);

    }
    return 0;
}
