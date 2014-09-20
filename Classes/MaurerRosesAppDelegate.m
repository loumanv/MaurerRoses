//
//  MaurerRosesAppDelegate.m
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import "MaurerRosesAppDelegate.h"
#import "MaurerRosesViewController.h"

@implementation MaurerRosesAppDelegate

@synthesize window;
@synthesize viewController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}

#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
}


- (void)dealloc {
    [super dealloc];
}

@end
