//
//  FKCustomView.m
//  ios1
//
//  Created by glumes on 2019/11/9.
//  Copyright © 2019 glumes. All rights reserved.
//

#import "FKCustomView.h"

@implementation FKCustomView

int curX;
int curY;

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    CGPoint lastTouch = [touch locationInView:self];
    
    curX = lastTouch.x;
    curY = lastTouch.y;
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
    
    CGContextFillEllipseInRect(ctx, CGRectMake(curX - 10, curY - 10, 20, 20));
}





@end
