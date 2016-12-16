//
//  MenuVIew.h
//  LibroDeNoa
//
//  Created by dedam on 16/12/16.
//  Copyright © 2016 UAB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuView : UIView
@property (weak, nonatomic) IBOutlet UIButton *btnMenu;
@property (weak, nonatomic) IBOutlet UIView *vieMenu;

- (IBAction)orangeClick:(id)sender;
- (IBAction)yellowClick:(id)sender;
- (IBAction)violetClick:(id)sender;
- (IBAction)redClick:(id)sender;
- (IBAction)pageClick:(id)sender;

- (IBAction)menuClick:(id)sender;
- (id)initWithFrameAux:(CGRect)frame;
@end
