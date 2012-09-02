//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Charles on 12-09-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController()
@property (nonatomic) BOOL userInTheMiddleOfEnteringNumber; 
@end



@implementation CalculatorViewController

@synthesize display;
@synthesize userInTheMiddleOfEnteringNumber;

- (IBAction)digitPressed:(UIButton *)sender {
    if(self.userInTheMiddleOfEnteringNumber) {
        self.display.text = [self.display.text stringByAppendingFormat:sender.currentTitle];
    } else {
        self.display.text = sender.currentTitle;
        self.userInTheMiddleOfEnteringNumber = YES;
    }

}

- (IBAction)enterPressed {
}

- (IBAction)operationPressed:(UIButton *)sender {
}

@end
