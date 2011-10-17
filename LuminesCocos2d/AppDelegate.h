//
//  AppDelegate.h
//  LuminesCocos2d
//
//  Created by Lei Wang on 31/8/11.
//  Copyright Virtuos 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
