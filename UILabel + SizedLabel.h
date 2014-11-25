//
//  UILabel + SizedLabel.h
//  ether
//
//  Created by Josh Prochaska on 11/25/14.
//  Copyright (c) 2014 JoshProchaska. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    BEGIN_SL,
    END_SL,
    CENTER_SL
}START_POINT_TYPE_SL;

@interface UILabel(SizedLabel)

-(id)initWithText_sl:(NSString *)text startPoint:(CGPoint)point font:(UIFont *)font textColor:(UIColor *)textColor;
-(id)initWithText_sl:(NSString *)text startX:(CGFloat)xVal xStartType:(START_POINT_TYPE_SL)xStartType startY:(CGFloat)yVal yStartType:(START_POINT_TYPE_SL)yStartType font:(UIFont *)font textColor:(UIColor *)textColor;
@end
