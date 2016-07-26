//
//  ViewController.m
//  CoreTextDemo
//
//  Created by eliteall on 16/7/21.
//  Copyright © 2016年 chenzhongsong. All rights reserved.
//

#import "ViewController.h"
#import "CTDisplayView.h"
#import "CTFrameParserConfig.h"
#import "CTFrameParser.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CTDisplayView *ctView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"ddd");
    
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.width;
    
    CoreTextData *data = [CTFrameParser parserContent:@"按照以上内容，我们将CTDisplayView中的内容拆开" config:config];
    self.ctView.data = data;
    self.ctView.height = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
















































