//
//  CTDisplayView.m
//  CoreTextDemo
//
//  Created by eliteall on 16/7/21.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import "CTDisplayView.h"
#import "CoreText/CoreText.h"

@implementation CTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    //步骤1
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //步骤2
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    //步骤3
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    
    //步骤4
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"Hello World"];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, NULL);
    
    //步骤5
    CTFrameDraw(frame, context);
    
    //步骤6
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
    
    
}



@end
















































