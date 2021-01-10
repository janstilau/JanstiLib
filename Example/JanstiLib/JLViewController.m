//
//  JLViewController.m
//  JanstiLib
//
//  Created by JustinLau on 01/10/2021.
//  Copyright (c) 2021 JustinLau. All rights reserved.
//

#import "JLViewController.h"
#import <JanstiLib/Parser.h>
#import <JanstiLib/Speaker.h>

@interface JLViewController ()

@end

@implementation JLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Parser *aParser = [[Parser alloc] init];
    [aParser begin:@"Being to parser"];
    
    Speaker *speaker = [[Speaker alloc] init];
    [speaker saySth];
    [speaker changeMainVersion];
    [speaker getWeather];
}

@end
