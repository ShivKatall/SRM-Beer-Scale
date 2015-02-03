//
//  SRMColorController.h
//  Beer SRM Scale
//
//  Created by Cole Bratcher on 1/21/15.
//  Copyright (c) 2015 Cole Bratcher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SRMColorController : NSObject

-(UIColor *)getColorFromSRMString: (NSString *)srmString;

@end
