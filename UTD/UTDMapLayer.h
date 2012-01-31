//
//  HelloWorldLayer.h
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright ChalmersTH 2012. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface UTDMapLayer : CCLayer
{
    
    CCTMXTiledMap *_tileMap;
    CCTMXLayer *_background;
    CCTMXLayer *_meta;
    
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;
+(CCScene *) sceneWithMapNamed:(NSString *) mapName;
-(id) initWithMapNamed:(NSString *) mapName; 

@property (nonatomic, retain) CCTMXTiledMap *tileMap;
@property (nonatomic, retain) CCTMXLayer *background;
@property (nonatomic, retain) CCTMXLayer *meta;

@end
