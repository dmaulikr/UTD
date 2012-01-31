//
//  AppDelegate.h
//  UTD
//
//  Created by Tommaso Piazza on 1/31/12.
//  Copyright ChalmersTH 2012. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
