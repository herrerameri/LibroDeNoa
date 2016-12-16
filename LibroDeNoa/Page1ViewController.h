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
@property (weak, nonatomic) IBOutlet UIView *carlota;
@property (weak, nonatomic) IBOutlet UIImageView *carlota_bici;
@property (weak, nonatomic) IBOutlet UIView *tietaBafarada;
@property (weak, nonatomic) IBOutlet UILabel *lblTietaBafarada;
@property (weak, nonatomic) IBOutlet UIView *carlotaBafarada;
@property (weak, nonatomic) IBOutlet UILabel *lblCarlotaBafarada;
@property (weak, nonatomic) IBOutlet UIView *tietBafarada;
@property (weak, nonatomic) IBOutlet UILabel *lblTietBafarada;
@property (weak, nonatomic) IBOutlet UIView *linuxBafarada;
@property (weak, nonatomic) IBOutlet UILabel *lblLinuxBafarada;

- (IBAction)linuxText:(id)sender;
- (IBAction)carlotaText:(id)sender;
- (IBAction)tietaText:(id)sender;
- (IBAction)tietText:(id)sender;
- (IBAction)clickTronc:(id)sender;


@end

