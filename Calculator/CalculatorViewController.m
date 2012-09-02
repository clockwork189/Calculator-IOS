//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Charles on 12-09-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController()
@property (nonatomic) BOOL userInTheMiddleOfEnteringNumber; 
@property (nonatomic, strong) CalculatorBrain *brain;
@end



@implementation CalculatorViewController

@synthesize display;
@synthesize userInTheMiddleOfEnteringNumber;
@synthesize brain = _brain;

-(CalculatorBrain *) brain {
    if(!_brain) _brain = [[CalculatorBrain alloc] init];
    return _brain;
}

- (IBAction)digitPressed:(UIButton *)sender {
    if(self.userInTheMiddleOfEnteringNumber) {
        self.display.text = [self.display.text stringByAppendingFormat:sender.currentTitle];
    } else {
        self.display.text = sender.currentTitle;
        self.userInTheMiddleOfEnteringNumber = YES;
    }

}

- (IBAction)enterPressed {
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userInTheMiddleOfEnteringNumber = NO;
}

- (IBAction)operationPressed:(UIButton *)sender {
    if(self.userInTheMiddleOfEnteringNumber) {
        [self enterPressed];
    }
    double result = [self.brain performOperation:sender.currentTitle];
    self.display.text = [NSString stringWithFormat:@"%g", result];
}

@end
