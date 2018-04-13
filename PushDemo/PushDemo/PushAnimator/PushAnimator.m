//
//  PushAnimator.m
//  navTest
//
//  Created by jx-ou on 2018/4/8.
//  Copyright © 2018年 yow. All rights reserved.
//

#import "PushAnimator.h"

static NSTimeInterval kPushAnimationDuration = 0.3;

@implementation PushAnimator

- (void)animatePresentationOfViewController:(NSViewController *)viewController fromViewController:(NSViewController *)fromViewController{
    
    viewController.view.frame = NSMakeRect(NSWidth(fromViewController.view.frame), 0, NSWidth(fromViewController.view.frame), NSHeight(fromViewController.view.frame));
    
    viewController.view.autoresizingMask = NSViewWidthSizable |NSViewHeightSizable;
    [fromViewController.view addSubview:viewController.view];
    
    NSRect destinationRect = fromViewController.view.frame;
    
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        
        context.duration = kPushAnimationDuration;
        context.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
        viewController.view.animator.frame = destinationRect;
        
    } completionHandler:nil];
    
}

- (void)animateDismissalOfViewController:(NSViewController *)viewController fromViewController:(NSViewController *)fromViewController{
    
    NSRect destinationRect = NSMakeRect(NSWidth(fromViewController.view.frame), 0, NSWidth(fromViewController.view.frame), NSHeight(fromViewController.view.frame));
    
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        
        context.duration = kPushAnimationDuration;
        context.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        viewController.view.animator.frame = destinationRect;
        
    } completionHandler:^{
        
        [viewController.view removeFromSuperview];
        
    }];
    
}

@end



@implementation PushSegue

- (void)perform{
    NSViewController *vc = self.sourceController;
    
    PushAnimator *animator = [[PushAnimator alloc] init];
    [vc presentViewController:self.destinationController animator:animator];
}

@end
