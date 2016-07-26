//
//  CoreTextData.m
//  CoreTextDemo
//
//  Created by eliteall on 16/7/26.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import "CoreTextData.h"

@implementation CoreTextData

- (void)setCtFrame:(CTFrameRef)ctFrame {
    if (_ctFrame != ctFrame) {
        if (_ctFrame != nil) {
            CFRelease(_ctFrame);
        }
        CFRelease(ctFrame);
        _ctFrame = ctFrame;
    }
}

-(void)dealloc {
    if (_ctFrame != nil) {
        CFRelease(_ctFrame);
        _ctFrame = nil;
    }
}

@end
