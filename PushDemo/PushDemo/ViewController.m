//
//  ViewController.m
//  PushDemo
//
//  Created by jx-ou on 2018/4/13.
//  Copyright © 2018年 yow. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "PushAnimator.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)pushAction:(NSButton *)sender {
    
    SecondViewController *vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    PushSegue *segue = [PushSegue segueWithIdentifier:@"secondvc" source:self destination:vc performHandler:^(){
        
    }];
    
    [segue perform];
    
}

@end
