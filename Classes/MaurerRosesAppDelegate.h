//
//  MaurerRosesAppDelegate.h
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MaurerRosesViewController;

@interface MaurerRosesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MaurerRosesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MaurerRosesViewController *viewController;

@end

