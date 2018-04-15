//
//  GameStateProtocols.h
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

@import Foundation;
#import "Protocols.h"

//forward declarations
@protocol GameStateProtocol;
@protocol GameBoardProtocol;

//protocols
@protocol GameStateToViewModelProtocol   // GameState -> ViewModel

-(void) endCurrentGameState;
-(void) tilePlacedAtStackPosition:(int)position atHeightPosition:(int)resultHeightPosition;
-(void) showEndMessage:(NSString *)winningPlayerText;

@property (nonatomic) id<GameBoardProtocol> gameBoard;

@end


@protocol GameStateProtocol

-(void) onEnter;
-(void) willLeave;
-(void) tilePlacedAtPosition:(int)position;

@property (nonatomic, weak) id<GameStateProtocol> nextGameState;
@property (nonatomic, weak) id<GameStateToViewModelProtocol> viewModel;

@end


@protocol PlayGameStateProtocol

@property (nonatomic) enum TileEnum currentPlayer;

@end

