//
//  MainMenuLayer.m
//  LuminesCocos2d
//
//  Created by Lei Wang on 31/8/11.
//  Copyright 2011 Virtuos. All rights reserved.
//

#import "MainMenuLayer.h"
#import "GamePlayLayer.h"

@implementation MainMenuLayer

+(CCScene*) scene
{
    CCScene *scene = [CCScene node];
    MainMenuLayer *layer = [MainMenuLayer node];
    [scene addChild:layer];
    
    return scene;
}

-(id)init
{
    if((self = [super init]))
    {
        [CCMenuItemFont setFontSize:30];
		[CCMenuItemFont setFontName: @"Courier New"];
        
        CCMenuItemFont *playItem = [CCMenuItemFont itemFromString: @"Play" target: self selector:@selector(menuCallbackPlay)];
		
        
        CCMenuItemFont *optionItem = [CCMenuItemFont itemFromString: @"Option" target: self selector:@selector(menuCallbackOption)];
        
        CCMenu *menu = [CCMenu menuWithItems:playItem,optionItem, nil];
        [menu alignItemsVertically];
        
        [self addChild:menu];
    }
    
    return self;
}

-(void)menuCallbackPlay
{
    [[CCDirector sharedDirector] replaceScene:[GamePlayLayer scene]];
}

-(void)menuCallbackOption
{
    NSLog(@"Go to Option");
}

@end
