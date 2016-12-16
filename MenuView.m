//
//  MenuVIew.m
//  LibroDeNoa
//
//  Created by dedam on 16/12/16.
//  Copyright © 2016 UAB. All rights reserved.
//

#import "MenuView.h"
#import "SoundManager.h"

@implementation MenuView

- (IBAction)orangeClick:(id)sender {
     [[SoundManager sharedManager] playMusic:@"so_general_llegeixojo.mp3" looping:NO];
}

- (IBAction)yellowClick:(id)sender {
    [[SoundManager sharedManager] playMusic:@"so_general_llegeixmel.mp3" looping:NO];
}

- (IBAction)violetClick:(id)sender {
    [[SoundManager sharedManager] playMusic:@"so_general_pocapoc.mp3" looping:NO];
}

- (IBAction)redClick:(id)sender {
    [[SoundManager sharedManager] playMusic:@"so_general_mesdepressa.mp3" looping:NO];
}

- (IBAction)pageClick:(id)sender {
    [[SoundManager sharedManager] playMusic:@"so_general_pagines.mp3" looping:NO];
}

- (IBAction)menuClick:(id)sender {
    
    [[SoundManager sharedManager] playMusic:@"so_general_pop.mp3" looping:NO];
    if(_vieMenu.hidden == YES){
        [_vieMenu setHidden:NO];
    }
    else{
        [_vieMenu setHidden:YES];
    }
}

- (id)initWithFrameAux:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil] objectAtIndex:0];
    if (self) {
        // Initialization code
        self.frame = frame;
    }
    return self;
}

@end
