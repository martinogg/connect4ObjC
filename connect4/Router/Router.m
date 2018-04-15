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
#import "GameBoard.h"
#import "TileStackFactory.h"

@implementation Router

+(void) attachToViewController:(id<ViewControllerProtocol>) viewController {
    
    ViewModel* newViewModel = [[ViewModel alloc] init];
    Router* newRouter = [[Router alloc] init];
    
    newViewModel.viewController = viewController;
    newViewModel.router = newRouter;
    
    viewController.viewModel = newViewModel;
    
    newViewModel.gameStates = [newRouter createGameStatesWithViewModel:newViewModel];
    
    //TODO TEST
    newViewModel.gameBoard = [[GameBoard alloc] initWithTileStackFactory:[[TileStackFactory alloc] init]];
}

-(NSArray<id<GameStateProtocol>> *) createGameStatesWithViewModel:(id<GameStateToViewModelProtocol>) viewModel {
    NewGameState* newGameState = [[NewGameState alloc] init];
    PlayGameState* playGameState = [[PlayGameState alloc] init];
    EndGameState* endGameState = [[EndGameState alloc] init];
    
    newGameState.nextGameState = playGameState;
    playGameState.nextGameState = endGameState;
    endGameState.nextGameState = newGameState;
    
    newGameState.viewModel = viewModel;
    playGameState.viewModel = viewModel;
    endGameState.viewModel = viewModel;
    
    return [NSArray<id<GameStateProtocol>> arrayWithObjects:newGameState, playGameState, endGameState, nil];
}
@end
