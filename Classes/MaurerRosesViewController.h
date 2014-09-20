//
//  MaurerRosesViewController.h
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MaurerRosesModel.h"
#import "MaurerRosesViewDraw.h"


@interface MaurerRosesViewController : UIViewController 


@property (retain) IBOutlet UILabel * nLabel;
@property (retain) IBOutlet UILabel * dLabel;
@property (retain) MaurerRosesModel *model;
@property (retain) MaurerRosesViewDraw *drawView;

-(IBAction)nSliderMoved:(UISlider*)sender;
-(IBAction)dSliderMoved:(UISlider*)sender;

-(void)updateView;


@end

