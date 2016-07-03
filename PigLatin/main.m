//
//  main.m
//  PigLatin
//
//  Created by Jeff Eom on 2016-07-01.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"
#import "inputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        inputCollector *userInput = [[inputCollector alloc] init];
        NSString *pigLatinThis = [userInput inputForPrompt:@"Please type in a string to be piglatined"];
        NSString *PigLatined = [pigLatinThis stringByPigLatinization];
        
        
        NSLog(@"%@", PigLatined);
        
    }
    return 0;
}
