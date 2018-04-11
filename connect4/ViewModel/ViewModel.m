//
//  ViewModel.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "ViewModel.h"

@interface ViewModel()

@property (nonatomic, weak) id<GameStateProtocol> currentGameState;
@property (nonatomic, strong) NSArray<id<GameStateProtocol>> *gameStates;

@end


@implementation ViewModel

@synthesize viewController;
@synthesize router;
@synthesize currentGameState;

- (void)endCurrentGameState {
    // TODO TEST
    id<GameStateProtocol> newGameState = currentGameState.nextGameState;
    [currentGameState willLeave];
    currentGameState = newGameState;
    [currentGameState onEnter];
}

@end
