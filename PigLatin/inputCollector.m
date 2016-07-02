//
//  inputCollector.m
//  PigLatin
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "inputCollector.h"

@implementation inputCollector

char inputChars[255];

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *userInput = [NSString stringWithUTF8String:inputChars];
    NSString *formattedUserInput = [userInput stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return formattedUserInput;
}

@end
