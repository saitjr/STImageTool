//
//  UIImage+STImageInfo.m
//  STImageTool
//
//  Created by TangJR on 3/7/16.
//  Copyright © 2016 tangjr. All rights reserved.
//

#import "UIImage+STImageInfo.h"

@implementation UIImage (STImageInfo)

- (instancetype)st_blackAndWhite {
    return nil;
}

- (void)st_allPixels {
    CGImageRef imageRef = [self CGImage];
    size_t width = CGImageGetWidth(imageRef);
    size_t height = CGImageGetHeight(imageRef);
    
    size_t bytesPerPixel = 4;
    size_t bytesPerRow = bytesPerPixel * width;
    size_t bitsPerComponent = 8; // 每个颜色所占的 bit
    
    UInt32 *pixels = (UInt32 *)malloc(sizeof(UInt32) * width * height);
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    uint32_t bitmapInfo = kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big;
    CGContextRef context = CGBitmapContextCreate(pixels, width, height, bitsPerComponent, bytesPerRow, colorSpace, bitmapInfo);
    
    int sum = 0;
    for (int i = 0; i < width; i++) {
        for (int j = 0; j < height; j++) {
            printf("%d ", pixels[sum]);
            sum++;
        }
        printf("\n");
    }
}

@end