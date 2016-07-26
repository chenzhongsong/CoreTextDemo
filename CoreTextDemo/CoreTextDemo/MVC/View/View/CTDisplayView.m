//
//  CTDisplayView.m
//  CoreTextDemo
//
//  Created by eliteall on 16/7/21.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import "CTDisplayView.h"

@implementation CTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    /*
    //步骤1
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //步骤2
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    //步骤3
    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddRect(path, NULL, self.bounds);
    CGPathAddEllipseInRect(path, NULL, self.bounds);
    
    //步骤4
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"Hello World！创建绘制的区域，CoreText本身支持各种文字排版的区域，我们这里简单的将UIView的整个界面作为排版的区域，为了加深理解，建议读者将该步骤的代码替换成如下代码，测试不同的绘制区域带来的界面变化。"];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, NULL);
    
    //步骤5
    CTFrameDraw(frame, context);
    
    //步骤6
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
    */
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    if (self.data) {
        CTFrameDraw(self.data.ctFrame, context);
    }
}



@end
















































