//
//  GamePlayLayer.m
//  LuminesCocos2d
//
//  Created by Lei Wang on 31/8/11.
//  Copyright 2011 Virtuos. All rights reserved.
//

#import "GamePlayLayer.h"
#import "CCTouchDispatcher.h"
#import "PauseMenuLayer.h"

@implementation GamePlayLayer

+(CCScene*) scene
{
    CCScene *scene = [CCScene node];
    GamePlayLayer *layer = [GamePlayLayer node];
    [scene addChild:layer];
    return scene;
}

-(id) init
{
    if((self = [super init]))
    {
        whiteCell = [CCSprite spriteWithFile:@"CellWhite.png"];
        whiteCell.position = ccp(10,10);
        [self addChild:whiteCell];
        
        yellowCell = [CCSprite spriteWithFile:@"CellYellow.png"];
        yellowCell.position = ccp(50,10);
        [self addChild:yellowCell];
        
        
        CCMenuItem *pauseButton = [CCMenuItemImage itemFromNormalImage:@"pauseButton.png" selectedImage:@"pauseButton.png" target:self selector:@selector(pauseGame:)];
        CCMenu *pauseMenu = [CCMenu menuWithItems:pauseButton, nil];
        CGSize winSize = [[CCDirector sharedDirector]winSize];
        pauseMenu.position = ccp(winSize.width - 50, winSize.height - 50);
        [self addChild:pauseMenu];
        
        [self schedule:@selector(update:)];
        
        _gird = [[SquareGird alloc] initWithParentNode:self];
        
        self.isTouchEnabled = YES;
    }
    
    return self;
}

-(void) dealloc
{
    [super dealloc];
}

-(void) update:(ccTime)dt
{
    
}

-(void)registerWithTouchDispatcher
{
    [[CCTouchDispatcher sharedDispatcher] 
     addTargetedDelegate:self priority:0 swallowsTouches:YES];
}

#pragma mark touch events
-(BOOL)ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    return YES;
}

-(void)ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint location = [self convertTouchToNodeSpace:touch];
    [yellowCell stopAllActions];
    [yellowCell runAction:[CCMoveTo actionWithDuration:1 
                                             position:location] ];
}
                                   
-(void)pauseGame : (id)sender
{
    NSLog(@"PauseGame");
    
    [[CCDirector sharedDirector]pushScene:[PauseMenuLayer scene]];
}
@end
