//
//  ViewController.m
//  AttributedStringExample
//
//  Created by yaakaito on 2012/09/25.
//  Copyright (c) 2012年 yaakaito.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // yaakaito pushed to master at yaakaito/Specs
    NSAttributedString *name = [[NSAttributedString alloc] initWithString:@"yaakaito" attributes:@{NSForegroundColorAttributeName : [UIColor blueColor]}];
    
    NSAttributedString *repository = [[NSAttributedString alloc] initWithString:@"yaakaito/Specs" attributes:@{NSForegroundColorAttributeName : [UIColor blueColor]}];
    
    NSAttributedString *others = [[NSAttributedString alloc] initWithString:@" pushed to master at "];
    
    NSMutableAttributedString *message = [[NSMutableAttributedString alloc] initWithAttributedString:name];
    [message appendAttributedString:others];
    [message appendAttributedString:repository];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
    [self.view addSubview:label];
    
    label.attributedText = message;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
