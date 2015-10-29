//
//  BKMoneyUtils.m
//  BKMoneyKit
//
//  Created by Byungkook Jang on 2014. 8. 24..
//  Copyright (c) 2014년 Byungkook Jang. All rights reserved.
//

#import "BKMoneyUtils.h"

@implementation BKMoneyUtils

+ (NSRegularExpression *)nonNumericRegularExpression
{
    return [NSRegularExpression regularExpressionWithPattern:@"[^0-9]+" options:0 error:nil];
}

+ (NSCharacterSet *)numberCharacterSet
{
    return [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
}

+ (UIImage *)cardLogoImageWithShortName:(NSString *)shortName
{
    UIImage *cardLogoImage = nil;
    
    NSBundle* libBundle = [NSBundle bundleForClass:self.class];
    NSString* cardLogoPath = [[libBundle resourcePath] stringByAppendingPathComponent:@"BKMoneyKit.bundle/CardLogo"];
    if (shortName) {
        cardLogoImage = [UIImage imageWithContentsOfFile:[cardLogoPath stringByAppendingPathComponent:shortName]];
    }
    
    if (nil == cardLogoImage) {
        cardLogoImage = [UIImage imageWithContentsOfFile:[cardLogoPath stringByAppendingPathComponent:@"default"]];
    }
    
    return cardLogoImage;
}

@end
