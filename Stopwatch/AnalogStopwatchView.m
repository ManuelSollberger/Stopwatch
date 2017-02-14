//
//  AnalogStopwatchView.m
//  Stopwatch
//
//  Created by Manuel on 13.02.17.
//  Copyright © 2017 Telegraph Studios. All rights reserved.
//

#import "AnalogStopwatchView.h"

@implementation AnalogStopwatchView

float CLOCK_BORDER_DISTANCE = 16;
float CLOCK_BORDER_SIZE = 1;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef g = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(g, CGRectMake(rect.origin.x + CLOCK_BORDER_DISTANCE + (CLOCK_BORDER_SIZE / 2), rect.origin.y + CLOCK_BORDER_DISTANCE + (CLOCK_BORDER_SIZE / 2), rect.size.width - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE, rect.size.height - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE));
    CGContextSetStrokeColorWithColor(g, [[UIColor blackColor] CGColor]);
    CGContextSetFillColorWithColor(g, [[UIColor whiteColor] CGColor]);
    CGContextSetLineWidth(g, 1);
    CGContextStrokePath(g);
}


@end
