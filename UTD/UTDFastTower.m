//
//  UTDFastTower.m
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright (c) 2012 ChalmersTH. All rights reserved.
//

#import "UTDFastTower.h"

@implementation UTDFastTower

+(id) tower {
    
    UTDTower *tower = [UTDTower towerWithImage:kDefaultFastTower];
    tower->_level = 1;
    tower->_firePower = 1;
    tower->_range = 1;
    tower->_rate = 10.0f;
    return tower;
}

@end
