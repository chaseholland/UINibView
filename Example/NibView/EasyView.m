//
//  EasyView.m
//  NibView
//
//  Created by Chase Holland on 4/10/15.
//  Copyright (c) 2015 Chase Holland. All rights reserved.
//

#import "EasyView.h"

@interface EasyView()

@property (nonatomic, retain) IBOutlet UIButton* changeColorButton;

- (IBAction)changeColorPressed:(id)sender;

@end

@implementation EasyView

@synthesize changeColorButton;

#pragma mark -
#pragma mark Buttons

- (IBAction)changeColorPressed:(id)sender
{
	
	// simple button that change the background color so you can see that it works...
	
	CGFloat red = (float)(arc4random() % 255) / 255.f;
	CGFloat green = (float)(arc4random() % 255) / 255.f;
	CGFloat blue = (float)(arc4random() % 255) / 255.f;

	self.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
}

@end
