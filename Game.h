//
//  Game.h
//  DailyLifeOfHero
//
//  Created by 曾韶彬 on 15/2/11.
//  Copyright (c) 2015年 烧饼工坊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"
#import "Role.h"
@interface Game : NSObject
@property (nonatomic, strong) NSMutableDictionary* taskDict;
@property (nonatomic, strong) Role* role;
@end
