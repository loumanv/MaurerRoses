//
//  MaurerRosesViewController.m
//  MaurerRoses
//
//  Created by Vasileios Loumanis on 11/02/2013.
//  Copyright 2013 Vasileios Loumanis. All rights reserved.
//

#import "MaurerRosesViewController.h"

@implementation MaurerRosesViewController


@synthesize nLabel, dLabel, model, drawView;

-(IBAction)nSliderMoved:(UISlider*)sender {
	
	//We check if the n is equal with the value of the slider 
	//before we update the view, because slider returns a float
	//and triggers the updateView method without changing the 
	//integer n
	if (self.model.n != (int)sender.value) {
		self.model.n = sender.value;
		[self updateView];
	}
}

-(IBAction)dSliderMoved:(UISlider*)sender {
	
	if (self.model.d != (int)sender.value) {
		self.model.d = sender.value;
		[self updateView];
	}
}

-(void)updateView {
	
	nLabel.text = [NSString stringWithFormat:@"%d", self.model.n];
	dLabel.text = [NSString stringWithFormat:@"%d", self.model.d];
	//We call the drawRect method indirectly
	[self.drawView setNeedsDisplay];
}

- (void)viewDidLoad {
	
    [super viewDidLoad];
	
	model = [[MaurerRosesModel alloc]init];
	drawView = [[MaurerRosesViewDraw alloc]initWithModel:model];
	//Add the subView to the view
	[self.view addSubview:drawView];
	//Update the view from the first time it loads
	[self updateView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}

- (void)dealloc {
    [super dealloc];
}


@end
