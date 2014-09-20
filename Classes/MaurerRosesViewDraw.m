//
//  MaurerRosesViewDraw.m
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import "MaurerRosesViewDraw.h"


@implementation MaurerRosesViewDraw


@synthesize model;

//We initialize the class with an object of the MaurerRosesModel class
-(id)initWithModel:(MaurerRosesModel*)m {

    self = [super initWithFrame:m.subView];
	if (self) {
        self.model = m;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
	
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	CGContextClearRect(ctx,self.bounds);
	CGContextBeginPath(ctx);
	//Move to the point in the center of the subView
	CGContextMoveToPoint(ctx, model.subView.size.width/2, model.subView.size.height/2);

	//Implementation of the pseudocode for drawing a Maurer rose
	for (int i=1; i<360; i++) {
		
		//We initialize x and y to be on the center of our subView
		double x = model.subView.size.width/2; 
		double y = model.subView.size.height/2;
		double theta = 2 * M_PI * i * self.model.d / 360;
		double r = sin(self.model.n * theta);
		
		//The constant a is equal with half of the width of our subView. 
		x = model.subView.size.width/2 *r * cos(theta) + x;
		y = model.subView.size.height/2 *r * sin(theta) + y;
		
		//We add the point x, y to draw it later
		CGContextAddLineToPoint(ctx, x , y );
	}
	//Drawing outside of the loop
	CGContextSetLineWidth(ctx,0.5);
	[[UIColor whiteColor] setStroke];
	CGContextDrawPath(ctx, kCGPathStroke);
}

- (void)dealloc {
    [super dealloc];
}


@end
