//
//  UILabel + SizedLabel.m
//  ether
//
//  Created by Josh Prochaska on 11/25/14.
//  Copyright (c) 2014 JoshProchaska. All rights reserved.
//

#import "UILabel + SizedLabel.h"

@implementation UILabel(SizedLabel)

-(id)initWithText_sl:(NSString *)text startPoint:(CGPoint)point font:(UIFont *)font textColor:(UIColor *)textColor{
    self = [super init];
    
    if(self){
        CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: font}];
        [self setFrame:CGRectMake(point.x, point.y, textSize.width, textSize.height)];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setTextColor:textColor];
        [self setFont:font];
        [self setText:text];
    }
    
    return self;
}

-(id)initWithText_sl:(NSString *)text startX:(CGFloat)startX xStartType:(START_POINT_TYPE_SL)xStartType startY:(CGFloat)startY yStartType:(START_POINT_TYPE_SL)yStartType font:(UIFont *)font textColor:(UIColor *)textColor{
    self = [super init];
    
    if(self){
        CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: font}];
        CGFloat xVal = [self getStartPointFor:startX startType:xStartType length:textSize.width];
        CGFloat yVal = [self getStartPointFor:startY startType:yStartType length:textSize.height];
        
        [self setFrame:CGRectMake(xVal, yVal, textSize.width, textSize.height)];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setFont:font];
        [self setText:text];
        [self setTextColor:textColor];
    }
    
    return self;
}

-(CGFloat)getStartPointFor:(CGFloat)point startType:(START_POINT_TYPE_SL)startType length:(CGFloat)length{
    CGFloat startVal;
    
    switch (startType) {
        case BEGIN_SL:
            startVal = point;
            break;
            
        case CENTER_SL:
            startVal = point - (length/2);
            break;
            
        case END_SL:
            startVal = point - length;
            break;
            
        default:
            startVal = point;
            break;
    }
    
    return startVal;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
