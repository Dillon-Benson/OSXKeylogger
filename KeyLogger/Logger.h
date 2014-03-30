//
//  Logger.h
//  KeyLogger
//
//  Created by Dillon-Dev on 3/30/14.
//  Copyright (c) 2014 Dillon-Dev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
+ (void)handleKeyPress:(NSEvent *)event;
@end
