//
//  PauseMenuLayer.m
//  LuminesCocos2d
//
//  Created by Lei Wang on 31/8/11.
//  Copyright 2011 Virtuos. All rights reserved.
//

#import "PauseMenuLayer.h"
#import "GamePlayLayer.h"
#import "MainMenuLayer.h"

@implementation PauseMenuLayer

+(CCScene*) scene
{
    CCScene *scene = [CCScene node];
    PauseMenuLayer *layer = [PauseMenuLayer node];
    [scene addChild:layer z:0];
    
    return scene;
}

-(id)init
{
    if((self = [super init]))
    {
        [CCMenuItemFont setFontSize:30];
		[CCMenuItemFont setFontName: @"Courier New"];
        
        CCMenuItemFont *resumeItem = [CCMenuItemFont itemFromString: @"Resume" target: self selector:@selector(menuCallbackResume)];
		
        
        CCMenuItemFont *mainMenuItem = [CCMenuItemFont itemFromString: @"MainMenu" target: self selector:@selector(menuCallbackMainMenu)];
        
        CCMenu *menu = [CCMenu menuWithItems:resumeItem,mainMenuItem, nil];
        [menu alignItemsVertically];
        
        [self addChild:menu];
    }
    
    return self;
}

-(void)menuCallbackResume
{
    [[CCDirector sharedDirector]popScene];
}

-(void)menuCallbackMainMenu
{
    [[CCDirector sharedDirector] popScene];
    [[CCDirector sharedDirector] replaceScene:[MainMenuLayer scene]];
}

@end
