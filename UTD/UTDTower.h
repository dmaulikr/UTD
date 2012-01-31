//
//  UTDTower.h
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright (c) 2012 ChalmersTH. All rights reserved.
//

#import "cocos2d.h"
#import "CCSprite.h"

#define kDefaultTower @"tower.png"

@interface UTDTower : CCSprite
{
@protected
    int _level;
    int _firePower;
    int _range;
    float _rate;
}

+(id) towerWithImage:(NSString *) imgName;

@property (readonly, nonatomic) int level;
@property (readonly, nonatomic) int firePower;
@property (readonly, nonatomic) int range;
@property (readonly, nonatomic) float rate;

@end
