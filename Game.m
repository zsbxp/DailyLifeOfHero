//
//  Game.m
//  DailyLifeOfHero
//
//  Created by 曾韶彬 on 15/2/11.
//  Copyright (c) 2015年 烧饼工坊. All rights reserved.
//

#import "Game.h"

@implementation Game
@synthesize taskDict = _taskDict;
@synthesize role = _role;
- (NSMutableDictionary*) taskDict
{
    if (!_taskDict) {
        _taskDict = [self taskLoad];
        
    }
    return _taskDict;
}
- (uint) getAdvAttr:(NSString *)AttrName
{
    return 0;
}
- (uint) getBaseAttr:(NSString *)AttrName
{
    return 0;
}

- (void) taskStart:(NSNumber *)TaskId
{
}
- (void) taskFinish:(NSNumber *)TaskId
{
    
}
- (void) taskSave
{
    
}
-(NSMutableDictionary*) taskLoad
{
    return [[NSMutableDictionary alloc] init];
}

@end
