//
//  HFTools.m
//  红方投资
//
//  Created by wyz on 15/9/21.
//  Copyright © 2015年 LWP. All rights reserved.
//

#import "HFTools.h"

@implementation HFTools
/**
 *  返回字典中对应key的value
 *
 *  @param dict 字典
 *  @param key  key
 *
 *  @return <#return value description#>
 */
+(NSString*)getStringWith:(NSDictionary*)dict forKey:(NSString*)key{
    NSString *value=@"";
    if (dict!=nil) {
        value=([NSString stringWithFormat:@"%@",[dict objectForKey:key]]==nil||[[NSString stringWithFormat:@"%@",[dict objectForKey:key]] isEqualToString:@"(null)"])?@"":[NSString stringWithFormat:@"%@",[dict objectForKey:key]];
    }
    return value;
}
+(NSString*)getStringWithNowTime{
    //得到当前系统日期
    NSDate *date1 = [NSDate date];
    //然后您需要定义一个NSDataFormat的对象
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc]init];
    //然后设置这个类的dataFormate属性为一个字符串，系统就可以因此自动识别年月日时间
    dateFormat.dateFormat = @"yyyy-MM-dd";
    //之后定义一个字符串，使用stringFromDate方法将日期转换为字符串
    NSString * dateToString = [dateFormat stringFromDate:date1];
    return dateToString;
}

+(NSDate*)getDateWithString:(NSString *)time{
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];//实例化一个NSDateFormatter对象
    
     [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];//设定时间格式,这里可以设置成自己需要的格式
    
    NSDate *date =[dateFormat dateFromString:time];
    return date;
}
//手机号码验证
+ (BOOL) validateMobile:(NSString *)mobile{
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}

//车牌号验证
+ (BOOL) validateCarNo:(NSString *)carNo{
    NSString *carRegex = @"^[\u4e00-\u9fa5]{1}[a-zA-Z]{1}[a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    NSLog(@"carTest is %@",carTest);
    return [carTest evaluateWithObject:carNo];
}

//车型
+ (BOOL) validateCarType:(NSString *)CarType{
    NSString *CarTypeRegex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",CarTypeRegex];
    return [carTest evaluateWithObject:CarType];
}


//用户名
+ (BOOL) validateUserName:(NSString *)name{
    NSString *userNameRegex = @"^[A-Za-z0-9]{6,20}+$";
    NSPredicate *userNamePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",userNameRegex];
    BOOL B = [userNamePredicate evaluateWithObject:name];
    return B;
}


//密码
+ (BOOL) validatePassword:(NSString *)passWord{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:passWord];
}


//昵称
+ (BOOL) validateNickname:(NSString *)nickname{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{4,8}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [passWordPredicate evaluateWithObject:nickname];
}


//身份证号
+ (BOOL) validateIdentityCard: (NSString *)identityCard{
    BOOL flag;
    if (identityCard.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}

@end
