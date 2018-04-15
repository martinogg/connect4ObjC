//
//  PlayGameState.m
//  connect4
//
//  Created by martin ogg on 29/03/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "PlayGameState.h"

@implementation PlayGameState

@synthesize currentPlayer;

-(void) onEnter {
    // TODO TEST
    self.currentPlayer = eTILE_PLAYER1;
}

-(void) tilePlacedAtPosition:(int)position {
    // TODO TEST
    int resultHeightPosition = [self.viewModel.gameBoard placeTile:self.currentPlayer atStackPos:position];
    
    if (resultHeightPosition >= 0) {
        // the tile placement was successful
        
        [self.viewModel tilePlacedAtStackPosition: position atHeightPosition: resultHeightPosition];
        
        if ([self.viewModel.gameBoard checkForWinningPlacementStartingAtStackPosition:position atHeightPosition:resultHeightPosition]) {
            // a win condition
            
            [self.viewModel endCurrentGameState];
        } else {
            // get ready for next player play
            
            if ([self.viewModel.gameBoard anotherTileCanBePlaced]) {
                // Prepare next player to play
                
                self.currentPlayer = (self.currentPlayer == eTILE_PLAYER1) ? eTILE_PLAYER2 : eTILE_PLAYER1;
                
            } else {
                // Game ends in a draw
                
                self.currentPlayer = eTILE_EMPTY;
                [self.viewModel endCurrentGameState];
            }
        }
        
    }
}

-(void) willLeave {
    // TODO TEST
    
    NSString *winningPlayerText;
    switch (self.currentPlayer) {
        case eTILE_PLAYER1:
            winningPlayerText = @"Player 1 wins";
            break;
        case eTILE_PLAYER2:
            winningPlayerText = @"Player 2 wins";
            break;
        default:
            winningPlayerText = @"A Draw";
            break;
    }
    
    [self.viewModel showEndMessage:winningPlayerText];
}

@end
