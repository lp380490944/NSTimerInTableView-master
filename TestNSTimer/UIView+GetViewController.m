//
//  UIView+GetViewController.m
//  TestNSTimer
//
//  Created by apple on 16/7/8.
//  Copyright © 2016年 wyz. All rights reserved.
//

#import "UIView+GetViewController.h"

@implementation UIView (GetViewController)
- (UIViewController *)getViewController
{
    for (UIView* next = [self superview]; next; next = next.superview)
    {
        UIResponder* nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]])
        {
            return (UIViewController*)nextResponder;
        }
    }
    
    return nil;
}
@end
