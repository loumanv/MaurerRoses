//
//  MaurerRosesViewDraw.h
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaurerRosesModel.h"


@interface MaurerRosesViewDraw : UIView 


@property (retain) MaurerRosesModel *model;

-(id)initWithModel:(MaurerRosesModel *)m;


@end
