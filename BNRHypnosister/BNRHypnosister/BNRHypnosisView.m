//
//  BNRHypnosisView.m
//  BNRHypnosister
//
//  Created by hemster on 4/14/16.
//  Copyright © 2016 Zeyu Wei. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGRect bounds = self.bounds;
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    float radius = (MIN(bounds.size.width, bounds.size.height) /2.0);
    
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
    
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
    
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
    
    // Drawing code
    NSLog(@"Method invoked!");
}

@end
