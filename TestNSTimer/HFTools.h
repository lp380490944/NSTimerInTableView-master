//
//  HFTools.h
//  红方投资
//
//  Created by wyz on 15/9/21.
//  Copyright © 2015年 LWP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HFTools : NSObject
//根据key返回字典对应的字符串信息
+(NSString*)getStringWith:(NSDictionary*)dict forKey:(NSString*)key;
//返回当前时间的字符串信息
+(NSString*)getStringWithNowTime;
//返回time时间的date类型
+(NSDate*)getDateWithString:(NSString*)time;
+ (BOOL) validateMobile:(NSString *)mobile;
//身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard;

@end
