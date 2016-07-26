//
//  CTFrameParserConfig.h
//  CoreTextDemo
//
//  Created by chenzs on 16/7/25.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTFrameParserConfig : NSObject

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic, assign) CGFloat lineSpace;
@property (nonatomic, strong) UIColor *textColor;

@end
