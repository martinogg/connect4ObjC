//
//  Router.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "Router.h"
#import "ViewModel.h"
#import "NewGameState.h"
#import "PlayGameState.h"
#import "EndGameState.h"

@implementation Router

+(void) attachToViewController:(id<ViewControllerProtocol>) viewController {
    
    ViewModel* newViewModel = [[ViewModel alloc] init];
    Router* newRouter = [[Router alloc] init];
    
    newViewModel.viewController = viewController;
    newViewModel.router = newRouter;
    
    viewController.viewModel = newViewModel;
}

-(NSArray<id<GameStateProtocol>> *) createGameStates {
    NewGameState* newGameState = [[NewGameState alloc] init];
    PlayGameState* playGameState = [[PlayGameState alloc] init];
    EndGameState* endGameState = [[EndGameState alloc] init];
    
    //TODO set next game states for each and TEST
    
    return [NSArray<id<GameStateProtocol>> arrayWithObjects:newGameState, playGameState, endGameState, nil];
}
@end
