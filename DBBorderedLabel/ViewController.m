//
//  ViewController.m
//  DBBorderedLabel
//
//  Created by Daniel Beard on 4/01/13.
//  Copyright (c) 2013 Daniel Beard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.borderLabel1.borderWidth = 10.0f;
    self.borderLabel1.borderColor = [UIColor redColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
