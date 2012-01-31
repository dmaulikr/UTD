//
//  HelloWorldLayer.m
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright ChalmersTH 2012. All rights reserved.
//


// Import the interfaces
#import "UTDMapLayer.h"

// HelloWorldLayer implementation
@implementation UTDMapLayer
@synthesize tileMap = _tileMap, background = _background, meta = _meta;


+(CCScene *) scene{

    // 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	UTDMapLayer *layer = [UTDMapLayer node];
    
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;

}


+(CCScene *) sceneWithMapNamed:(NSString *) mapName{

	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	UTDMapLayer *layer = [[[UTDMapLayer alloc] initWithMapNamed:mapName] autorelease];
    
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;

}

// on "init" you need to initialize your instance
-(id) init
{
    if( (self=[super init] )) {
        
    }
    return self;
}

-(id) initWithMapNamed:(NSString *) mapName {

    if((self = [super init])){
    
        self.tileMap = [CCTMXTiledMap tiledMapWithTMXFile:mapName];
        self.background = [_tileMap layerNamed:@"Background"];
        self.meta = [_tileMap layerNamed:@"Meta"];
        self.meta.visible = NO;
        
        [self addChild:_tileMap z:-1];
    }

    return self;

}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
    
    
    //Map Stuff
    self.tileMap = nil;
    self.background = nil;
    self.meta = nil;
}
@end
