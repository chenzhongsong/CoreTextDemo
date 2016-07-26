//
//  CTFrameParser.h
//  CoreTextDemo
//
//  Created by eliteall on 16/7/26.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import "CTFrameParserConfig.h"


@interface CTFrameParser : NSObject

+ (CoreTextData *)parserContent:(NSString *)content config:(CTFrameParserConfig *)config;

@end
