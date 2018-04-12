//
//  ViewModel.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "ViewModel.h"

@interface ViewModel()

@end


@implementation ViewModel

@synthesize viewController;
@synthesize router;
@synthesize currentGameState;
@synthesize gameStates;

- (void)endCurrentGameState {

    id<GameStateProtocol> newGameState = currentGameState.nextGameState;
    [currentGameState willLeave];
    currentGameState = newGameState;
    [currentGameState onEnter];
}

@end
