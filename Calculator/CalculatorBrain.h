//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Charles on 12-09-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

-(void)pushOperand:(double)operand;
-(double)performOperation:(NSString *)operation;
@end
