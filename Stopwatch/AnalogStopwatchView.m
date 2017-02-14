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
float CLOCK_LARGE_DIGIT_LINE_WIDTH = 12;
float CLOCK_LARGE_DIGIT_LINE_LENGTH = 36;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef g = UIGraphicsGetCurrentContext();
    
    //Draw the background and border.
    CGContextAddEllipseInRect(g, CGRectMake(rect.origin.x + CLOCK_BORDER_DISTANCE + (CLOCK_BORDER_SIZE / 2), rect.origin.y + CLOCK_BORDER_DISTANCE + (CLOCK_BORDER_SIZE / 2), rect.size.width - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE, rect.size.height - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE));
    CGContextSetStrokeColorWithColor(g, [[UIColor grayColor] CGColor]);
    CGContextSetFillColorWithColor(g, [[UIColor whiteColor] CGColor]);
    CGContextSetLineWidth(g, 1);
    CGContextStrokePath(g);
    
    //Draw Large digits.
    float centerX = rect.size.width / 2;
    float centerY = rect.size.height / 2;
    float insideRadius = (rect.size.width - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE) / 2;
    float startRadius = ((rect.size.width - (CLOCK_BORDER_DISTANCE * 2) - CLOCK_BORDER_SIZE) / 2) - CLOCK_LARGE_DIGIT_LINE_LENGTH;
    
    CGContextSetLineWidth(g, CLOCK_LARGE_DIGIT_LINE_WIDTH);
    CGContextBeginPath(g);
    CGContextMoveToPoint(g, centerX, centerY);
    
    for (int i = 0; i <= 11; i++) {
        float direction = i * 30;
        
        float sinDir = sinf(direction);
        float conDir = cosf(direction);
        float startX = startRadius * sinDir + centerX;
        float startY = startRadius * conDir + centerY;
        float targetX = insideRadius * sinDir + centerX;
        float targetY = insideRadius * conDir + centerY;
        
        CGContextMoveToPoint(g, startX, startY);
        CGContextAddLineToPoint(g, targetX, targetY);
    }
    
    CGContextSetStrokeColorWithColor(g, [[UIColor blackColor] CGColor]);
    CGContextStrokePath(g);
}


@end
