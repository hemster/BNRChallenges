//
//  BNRHypnosisView.m
//  BNRHypnosister
//
//  Created by hemster on 4/14/16.
//  Copyright © 2016 Zeyu Wei. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()

@property (nonatomic, strong) UIColor *circleColor;

@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
//        self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor redColor];
        
        self.circleColor = [UIColor lightGrayColor];
//        self.userInteractionEnabled = YES;
        [self setUserInteractionEnabled:YES];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGRect bounds = self.bounds;
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float currentRadiu = maxRadius; currentRadiu > 0; currentRadiu -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadiu, center.y)];
        
        [path addArcWithCenter:center
                        radius:currentRadiu
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    
    path.lineWidth = 10;
    
    [self.circleColor setStroke];
    [path stroke];
    
    // Drawing code
    NSLog(@"Method invoked!");
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%@ was touched", self);
    
    // get 3 0~1 number
    float red = (arc4random() % 100) /100.0;
    float green = (arc4random() % 100) /100.0;
    float blue = (arc4random() % 100) /100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
    
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ was touched", self);
}
























@end
