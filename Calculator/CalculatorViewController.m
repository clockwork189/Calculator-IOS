//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Charles on 12-09-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize display;

- (IBAction)digitPressed:(UIButton *)sender {
    self.display.text = [self.display.text stringByAppendingFormat:sender.currentTitle];
}

@end
