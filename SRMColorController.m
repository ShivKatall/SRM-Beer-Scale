//
//  SRMColorController.m
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/21/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SRMColorController.h"

@interface SRMColorController ()

@property (nonatomic, strong) NSDictionary *colorDictionary;

@end

@implementation SRMColorController

-(id)init {
    self = [super init];
    if (self) {
        _colorDictionary = @{@"2" : [UIColor colorWithRed:0.945 green:0.922 blue:0.404 alpha:1],
                             @"3" : [UIColor colorWithRed:0.933 green:0.910 blue:0.263 alpha:1],
                             @"4" : [UIColor colorWithRed:0.918 green:0.898 blue:0.224 alpha:1],
                             @"5" : [UIColor colorWithRed:0.875 green:0.808 blue:0.220 alpha:1],
                             @"6" : [UIColor colorWithRed:0.831 green:0.729 blue:0.227 alpha:1],
                             @"7" : [UIColor colorWithRed:0.788 green:0.655 blue:0.247 alpha:1],
                             @"8" : [UIColor colorWithRed:0.749 green:0.573 blue:0.255 alpha:1],
                             @"9" : [UIColor colorWithRed:0.741 green:0.549 blue:0.255 alpha:1],
                             @"10" : [UIColor colorWithRed:0.745 green:0.506 blue:0.259 alpha:1],
                             @"11" : [UIColor colorWithRed:0.745 green:0.486 blue:0.247 alpha:1],
                             @"12" : [UIColor colorWithRed:0.749 green:0.447 blue:0.243 alpha:1],
                             @"13" : [UIColor colorWithRed:0.737 green:0.412 blue:0.224 alpha:1],
                             @"14" : [UIColor colorWithRed:0.694 green:0.380 blue:0.220 alpha:1],
                             @"15" : [UIColor colorWithRed:0.639 green:0.349 blue:0.227 alpha:1],
                             @"16" : [UIColor colorWithRed:0.588 green:0.325 blue:0.227 alpha:1],
                             @"17" : [UIColor colorWithRed:0.549 green:0.302 blue:0.212 alpha:1],
                             @"18" : [UIColor colorWithRed:0.486 green:0.275 blue:0.192 alpha:1],
                             @"19" : [UIColor colorWithRed:0.420 green:0.231 blue:0.133 alpha:1],
                             @"20" : [UIColor colorWithRed:0.361 green:0.208 blue:0.118 alpha:1],
                             @"21" : [UIColor colorWithRed:0.298 green:0.173 blue:0.086 alpha:1],
                             @"22" : [UIColor colorWithRed:0.286 green:0.153 blue:0.157 alpha:1],
                             @"23" : [UIColor colorWithRed:0.208 green:0.118 blue:0.106 alpha:1],
                             @"24" : [UIColor colorWithRed:0.145 green:0.078 blue:0.078 alpha:1],
                             @"25" : [UIColor colorWithRed:0.145 green:0.078 blue:0.078 alpha:1],
                             @"26" : [UIColor colorWithRed:0.094 green:0.063 blue:0.063 alpha:1],
                             @"27" : [UIColor colorWithRed:0.094 green:0.063 blue:0.063 alpha:1],
                             @"28" : [UIColor colorWithRed:0.067 green:0.055 blue:0.055 alpha:1],
                             @"29" : [UIColor colorWithRed:0.059 green:0.051 blue:0.051 alpha:1],
                             @"30" : [UIColor colorWithRed:0.059 green:0.051 blue:0.051 alpha:1],
                             @"31" : [UIColor colorWithRed:0.055 green:0.043 blue:0.043 alpha:1],
                             @"32" : [UIColor colorWithRed:0.059 green:0.051 blue:0.047 alpha:1],
                             @"33" : [UIColor colorWithRed:0.051 green:0.043 blue:0.043 alpha:1],
                             @"34" : [UIColor colorWithRed:0.031 green:0.031 blue:0.031 alpha:1],
                             @"35" : [UIColor colorWithRed:0.031 green:0.031 blue:0.031 alpha:1],
                             @"36" : [UIColor colorWithRed:0.027 green:0.027 blue:0.031 alpha:1],
                             @"37" : [UIColor colorWithRed:0.024 green:0.031 blue:0.031 alpha:1],
                             @"38" : [UIColor colorWithRed:0.024 green:0.031 blue:0.031 alpha:1],
                             @"39" : [UIColor colorWithRed:0.024 green:0.027 blue:0.027 alpha:1],
                             @"40" : [UIColor colorWithRed:0.024 green:0.027 blue:0.027 alpha:1],
                             };
    }
    return self;
}

-(UIColor *)getColorFromSRMString: (NSString *)srmString {
    
    UIColor *color = [_colorDictionary objectForKey:(srmString)];
    
    return color;
}

@end
