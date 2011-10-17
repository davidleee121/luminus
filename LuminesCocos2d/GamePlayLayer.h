//
//  GamePlayLayer.h
//  LuminesCocos2d
//
//  Created by Lei Wang on 31/8/11.
//  Copyright 2011 Virtuos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SquareGird.h"

enum Constants 
{
    kRowNumber = 10,
    kColumnNumber = 16,
};

enum SqureType
{
    kNone = 0,
    kWhite = 1,
    kBlack = 2,
};

@interface GamePlayLayer : CCLayer {
    CCSprite *whiteCell;
    CCSprite *yellowCell;
    
    SquareGird* _gird;
}

+(CCScene*) scene;

@end
