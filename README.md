Sized-UILabel
=============

UILabel Category adding automatic sizing and easier positioning when creating programtically

Installation
=============
Just add the "UILabel + SizedLabel.h" and "UILabel + SizedLabl.m" files to your project.
Then import with #import "UILabel + SizedLabel.h"

Usage
=============
The files add 2 new methods to the UILabel class.

-(id)initWithText_sl:(NSString *)text startPoint:(CGPoint)point font:(UIFont *)font textColor:(UIColor *)textColor
Allows you to create a new UILabel with its origin point set to the startPoint.

-(id)initWithText_sl:(NSString *)text startX:(CGFloat)xVal xStartType:(START_POINT_TYPE_SL)xStartType startY:(CGFloat)yVal yStartType:(START_POINT_TYPE_SL)yStartType font:(UIFont *)font textColor:(UIColor *)textColor
Allows you more control over how the label will be positioned. 
