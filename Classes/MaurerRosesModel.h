//
//  MaurerRosesModel.h
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MaurerRosesModel : NSObject 


@property (assign) int n;
@property (assign) int d;
//We create the place of the subView in the model for better encapsulation
@property (assign) CGRect subView;


@end
