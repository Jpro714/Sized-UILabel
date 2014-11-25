Sized-UILabel
=============

UILabel Category adding automatic sizing and easier positioning for creating UILabels programtically

Installation
=============
Just add the "UILabel + SizedLabel.h" and "UILabel + SizedLabel.m" files to your project.
Then import with #import "UILabel + SizedLabel.h"

Usage
=============
2 new methods are added to the UILabel class.

-(id)initWithText_sl:(NSString *)text startPoint:(CGPoint)point font:(UIFont *)font textColor:(UIColor *)textColor

Allows you to create a new UILabel with its origin point set to the startPoint.


-(id)initWithText_sl:(NSString *)text startX:(CGFloat)xVal xStartType:(START_POINT_TYPE_SL)xStartType startY:(CGFloat)yVal yStartType:(START_POINT_TYPE_SL)yStartType font:(UIFont *)font textColor:(UIColor *)textColor

Allows you more control over how the label will be positioned.

-Pass BEGIN_SL to the xStartType or yStartType parameter to have the UILabel's frame begin at this point (either x or y).

-Pass CENTER_SL to have the UILabel centered at this point (either on the x or y axis)

-Pass END_SL to have the UILabel frame end at this point (x or y)

