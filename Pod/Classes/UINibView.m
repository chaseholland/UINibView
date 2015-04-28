//
//  UINibView.m
//  Pods
//
//  Created by Chase Holland on 4/10/15.
//
//

#import "UINibView.h"

@implementation UINibView

// modification of http://cocoanuts.mobi/2014/03/26/reusable/
- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder
{
	if (![self.subviews count])
	{
		NSBundle *mainBundle = [NSBundle mainBundle];
		NSArray *loadedViews = [mainBundle loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
		UIView* loadedView = [loadedViews firstObject];
		
		[loadedView setFrame:self.frame];
		[loadedView setAutoresizingMask:self.autoresizingMask];
		loadedView.translatesAutoresizingMaskIntoConstraints =
		self.translatesAutoresizingMaskIntoConstraints;
		
		for (NSLayoutConstraint *constraint in self.constraints)
		{
			id firstItem = constraint.firstItem;
			if (firstItem == self)
				firstItem = loadedView;
			
			id secondItem = constraint.secondItem;
			if (secondItem == self)
				secondItem = loadedView;
			
			NSLayoutConstraint* c = [NSLayoutConstraint constraintWithItem:firstItem
																 attribute:constraint.firstAttribute
																 relatedBy:constraint.relation
																	toItem:secondItem
																 attribute:constraint.secondAttribute
																multiplier:constraint.multiplier
																  constant:constraint.constant];
			[loadedView addConstraint:c];
		}
		
		return loadedView;
	}
	return self;
}

@end
