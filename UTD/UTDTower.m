//
//  UTDTower.m
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright (c) 2012 ChalmersTH. All rights reserved.
//

#import "UTDTower.h"

@implementation UTDTower

@synthesize level = _level, firePower = _firePower, range = _range, rate = _rate;

+(id) towerWithImage:(NSString *) imgName {

    
    imgName = (imgName == nil) ? kDefaultTower : imgName;
    
    UTDTower *tower = [[[UTDTower alloc] initWithSpriteFrameName:imgName] autorelease];
    tower->_level = 1;
    tower->_firePower = 1;
    tower->_range = 1;
    tower->_rate = 1.0f;
    return tower;
}

-(void) upgrade {
    
    _level++;
}

-(void) shoot {

    //TODO
}

@end
