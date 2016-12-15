//
//  ViewController.h
//  LibroDeNoa
//
//  Created by IVAN MOLERA on 26/11/14.
//  Copyright (c) 2014 UAB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Page1ViewController : UIViewController {
    BOOL troncClicked;
}

@property (strong, nonatomic) IBOutlet UIImageView *tiet_cos;
@property (strong, nonatomic) IBOutlet UIImageView *tieta_cos;
@property (weak, nonatomic) IBOutlet UILabel *lblTextInicial;

- (IBAction)clickTronc:(id)sender;


@end

