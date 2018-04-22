//
//  Protocols.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Tile.h"
#import "GameStateProtocols.h"

// Forward declarations
@protocol ViewControllerProtocol;
@protocol GameStateProtocol;
@protocol GameStateToViewModelProtocol;
@class Tile;
@class TileStackFactory;

// protocols

@protocol RouterProtocol

-(NSArray<id<GameStateProtocol>> *) createGameStatesWithViewModel:(id<GameStateToViewModelProtocol>) viewModel;

@end


@protocol ViewModelProtocol

@property (nonatomic, weak) id<ViewControllerProtocol> viewController;
@property (nonatomic, strong) id<RouterProtocol> router;
@property (nonatomic, strong) NSArray<id<GameStateProtocol>> *gameStates;
@property (nonatomic, weak) id<GameStateProtocol> currentGameState;

-(void) viewDidLoad;

@end


@protocol ViewControllerProtocol

@property (nonatomic, strong) id<ViewModelProtocol, GameStateToViewModelProtocol> viewModel;

@end


@protocol TileStackProtocol

-(void) resetTiles;
-(int) placeTileForPlayer:(enum TileEnum)playerTile;

@property (nonatomic, strong) NSArray<Tile *> *tiles;

@end


@protocol GameBoardProtocol

-(instancetype) initWithTileStackFactory:(TileStackFactory *)tileStackFactory;
-(instancetype) init NS_UNAVAILABLE;
-(int) placeTile:(enum TileEnum)tileType atStackPos:(int)stackPos;
-(void) resetBoard;
-(BOOL) checkForWinningPlacementStartingAtStackPosition:(int)position atHeightPosition:(int)resultHeightPosition;
-(BOOL) anotherTileCanBePlaced;
    
@property (nonatomic, strong) NSArray<id<TileStackProtocol>> *tileStacks;

@end


@protocol GameViewProtocol

@end


