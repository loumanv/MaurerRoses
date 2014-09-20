//
//  MaurerRosesModel.m
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import "MaurerRosesModel.h"


@implementation MaurerRosesModel


@synthesize n, d, subView;

- (id)init {
	
    self = [super init];
    if (self) {
		n = 1;
		d = 1;
		subView = CGRectMake(20 ,20 ,280 ,280);
	}
	return self;
}

- (void)dealloc {

	[super dealloc];
}


@end
