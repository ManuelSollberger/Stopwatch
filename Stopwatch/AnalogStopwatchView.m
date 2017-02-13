//
//  AnalogStopwatchView.m
//  Stopwatch
//
//  Created by Manuel on 13.02.17.
//  Copyright © 2017 Telegraph Studios. All rights reserved.
//

#import "AnalogStopwatchView.h"

@implementation AnalogStopwatchView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef g = UIGraphicsGetCurrentContext();
    CGContextSetFillColor(g, CGColorGetComponents([[UIColor blackColor] CGColor]));
    CGContextAddEllipseInRect(g, rect);
    CGContextSetFillColor(g, CGColorGetComponents([[UIColor blackColor] CGColor]));
    CGContextFillPath(g);
}


@end
