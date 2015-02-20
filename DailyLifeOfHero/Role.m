//
//  Role.m
//  DailyLifeOfHero
//
//  Created by 曾韶彬 on 15/2/6.
//  Copyright (c) 2015年 烧饼工坊. All rights reserved.
//

#import "Role.h"

@implementation Role
@synthesize BaseAttr = _BaseAttr;
static const int INIT_ATTR_VALUE = 10;
-(NSArray*) BaseAttrName {
    return @[@"力量",@"灵巧",@"体质",
             @"专注",@"自控",@"坚韧",
             @"阅历",@"着装",@"才华",
             @"知识",@"判断",@"逻辑"
             ];
}
-(NSDictionary*) AdvToBaseAttrMap {
    return @{
             @"身体":@[@"力量",@"灵巧",@"体质"],
             @"精神":@[@"专注",@"自控",@"坚韧"],
             @"魅力":@[@"阅历",@"着装",@"才华"],
             @"智谋":@[@"知识",@"判断",@"逻辑"]
             };
}



- (NSNumber*) GetBaseAttr:(NSString*)baseAttrName
{
    return self.BaseAttr[baseAttrName];
}

- (NSNumber*) GetAdvAttr:(NSString*)advAttrName
{
    NSArray* baseAttrs = self.AdvToBaseAttrMap[advAttrName];
    NSNumber* advAttrValue = 0;
    for (NSString* BaseAttrName in baseAttrs)
    {
        NSNumber* baseAttrValue = [self GetBaseAttr:BaseAttrName];
        int sum = [advAttrValue intValue] + [baseAttrValue intValue];
        advAttrValue = [NSNumber numberWithInt:sum];
    }
    return advAttrValue;
}


- (NSMutableDictionary*) BaseAttr
{
    if(!_BaseAttr)
    {
        _BaseAttr = [[NSMutableDictionary alloc] init];
        for (NSString* AttrName in self.BaseAttrName) {
            _BaseAttr[AttrName] = [NSNumber numberWithInt:INIT_ATTR_VALUE];
        }
    }
    return _BaseAttr;
}
- (void) BaseAttrValue:(NSString*)attrName add:(int)AddValue
{
    int BaseAttrValue = [self.BaseAttr[attrName] intValue];
    int sum = BaseAttrValue + AddValue;
    self.BaseAttr[attrName] = [NSNumber numberWithInt:sum];
}

@end


