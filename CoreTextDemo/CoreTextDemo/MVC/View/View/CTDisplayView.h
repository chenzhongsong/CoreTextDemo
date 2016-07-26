//
//  CTDisplayView.h
//  CoreTextDemo
//
//  Created by eliteall on 16/7/21.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreTextData.h"

@interface CTDisplayView : UIView
@property (nonatomic, strong) CoreTextData *data;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@end
