//
//  GameView.m
//  connect4
//
//  Created by martin ogg on 22/04/2018.
//  Copyright © 2018 martinogg. All rights reserved.
//

#import "GameView.h"

@interface GameView()

-(void) setupView;

@end


@implementation GameView

-(instancetype) initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self setupView];
    }
    return self;
}

-(instancetype) initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super initWithCoder:aDecoder]) {
        
        [self setupView];
    }
    return self;
}

-(void) setupView {
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 30.0f, 30.0f)];
    testView.backgroundColor = [UIColor redColor];
    [self addSubview: testView];
    /*
    UIStackView *buttonPlacementStackView = [[UIStackView alloc] initWithFrame:CGRectZero];
    [buttonPlacementStackView setDistribution:UIStackViewDistributionFillEqually];
    
    [self addConstraints: @[
                            [NSLayoutConstraint constraintWithItem:buttonPlacementStackView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0f constant:0.0f],
                            
                            [NSLayoutConstraint constraintWithItem:buttonPlacementStackView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0f constant:0.0f],
                            
                            [NSLayoutConstraint constraintWithItem:buttonPlacementStackView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f],
                            
                            [NSLayoutConstraint constraintWithItem:buttonPlacementStackView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0.0]
                            ]];
    
    
    buttonPlacementStackView.backgroundColor = [UIColor redColor];
    
    for (int i = 0; i < MAXSTACKS; i++) {
        
    }
    
    [self addSubview: buttonPlacementStackView];
    */
}

@end
