//
//  Role.h
//  DailyLifeOfHero
//
//  Created by 曾韶彬 on 15/2/6.
//  Copyright (c) 2015年 烧饼工坊. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Role : NSObject
@property uint Lvl;
@property uint Exp;
@property (nonatomic, strong) NSArray* BaseAttrName;
@property (nonatomic, strong) NSMutableDictionary* BaseAttr;
@property (nonatomic, strong) NSDictionary* AdvToBaseAttrMap;
@end
