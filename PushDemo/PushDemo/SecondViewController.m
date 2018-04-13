//
//  SecondViewController.m
//  PushDemo
//
//  Created by jx-ou on 2018/4/13.
//  Copyright © 2018年 yow. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak) IBOutlet NSView *navgationBar;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.wantsLayer = true;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    self.navgationBar.wantsLayer = true;
    self.navgationBar.layer.backgroundColor = [NSColor grayColor].CGColor;
}

- (IBAction)backAction:(NSButton *)sender {
    
    [self dismissController:self];
}
@end
