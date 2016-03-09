//
//  GetAllPixelsVC.m
//  STImageTool
//
//  Created by TangJR on 3/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "GetAllPixelsVC.h"
#import "UIImage+STImageInfo.h"

@interface GetAllPixelsVC ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation GetAllPixelsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:@"emoji_middle_3"];
    self.imageView.image = image;
    
    [image st_allPixels];
}

@end