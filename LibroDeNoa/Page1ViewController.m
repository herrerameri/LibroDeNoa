//
//  ViewController.m
//  LibroDeNoa
//
//  Created by IVAN MOLERA on 26/11/14.
//  Copyright (c) 2014 UAB. All rights reserved.
//

#import "Page1ViewController.h"
#import "SoundManager.h"
#import "MenuView.h"

@interface Page1ViewController ()
{
    MenuView* m_MenuView;
}
@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[SoundManager sharedManager] playMusic:@"BG04.07_hort.mp3"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationCallback:)
                                                 name:nil
                                               object:nil];
    
    // Texto inicial
    [_lblTextInicial setText:NSLocalizedString(@"inicial", nil)];
    
    // Audio inicial
    NSString *audioName  = NSLocalizedString(@"audio", nil);
    NSString *path      = [[NSBundle mainBundle] pathForResource:audioName ofType:@"mp3"];
    [[SoundManager sharedManager] playMusic:path looping:NO];
    
    // Animaciones de los personajes
    [self configTietaNormal];
    [self configTietNormal];
    [_tiet_cos startAnimating];
    [_tieta_cos startAnimating];
    
    // Menu
    CGRect rect = CGRectMake(self.view.frame.size.width-300, 0, 300, self.view.frame.size.height - 400);
    m_MenuView = [[MenuView alloc] initWithFrameAux:rect];
    [self.view addSubview:m_MenuView];
}

-(void)viewDidAppear:(BOOL)animated{
    // Se anima aquí para que se reproduzca al volver
    [self configCarlotaNormal];
    [_carlota_bici startAnimating];

}

- (void) configTietNormal {
    
    troncClicked = NO;
    
    UIImage *tiet1 = [UIImage imageNamed:@"01_tiet_copet_destral1.png"];
    UIImage *tiet2 = [UIImage imageNamed:@"01_tiet_estatic.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tiet1, tiet2, nil];
    
    [_tiet_cos setAnimationImages:images];
    [_tiet_cos setAnimationRepeatCount:0];
    [_tiet_cos setAnimationDuration:2.0f];
}

- (void) configTietaNormal {
    
    UIImage *tietaRegant1 = [UIImage imageNamed:@"01_tieta_Regant_01.png"];
    UIImage *tietaRegant2 = [UIImage imageNamed:@"01_tieta_Regant_02.png"];
    UIImage *tietaEstatica = [UIImage imageNamed:@"01_tieta_estatica.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tietaRegant1, tietaRegant2, tietaEstatica, nil];
    
    [_tieta_cos setAnimationImages:images];
    [_tieta_cos setAnimationRepeatCount:0];
    [_tieta_cos setAnimationDuration:2.0f];
}

- (void) configTietTronc {
    
    troncClicked = YES;

    UIImage *tiet1 = [UIImage imageNamed:@"01_tiet_Partint_tronc1.png"];
    UIImage *tiet2 = [UIImage imageNamed:@"01_tiet_Partint_tronc2.png"];
    UIImage *tiet3 = [UIImage imageNamed:@"01_tiet_Partint_tronc3.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tiet1, tiet2, tiet3, nil];
    
    [_tiet_cos setAnimationImages:images];
    [_tiet_cos setAnimationRepeatCount:1];
    [_tiet_cos setAnimationDuration:1.5f];
}

- (void) configCarlotaNormal {
    
    UIImage *carlotaBici1 = [UIImage imageNamed:@"01_Carlota_bici01.png"];
    UIImage *carlotaBici2 = [UIImage imageNamed:@"01_Carlota_bici02.png"];
    UIImage *carlotaBici3 = [UIImage imageNamed:@"01_Carlota_bici03.png"];
    UIImage *carlotaBici4 = [UIImage imageNamed:@"01_Carlota_bici04.png"];
    UIImage *carlotaBici5 = [UIImage imageNamed:@"01_Carlota_bici05.png"];
    UIImage *carlotaBici6 = [UIImage imageNamed:@"01_Carlota_bici06.png"];
    UIImage *carlotaBici7 = [UIImage imageNamed:@"01_Carlota_bici07.png"];
    UIImage *carlotaBici8 = [UIImage imageNamed:@"01_Carlota_bici08.png"];
    UIImage *carlotaBici9 = [UIImage imageNamed:@"01_Carlota_bici09.png"];
    UIImage *carlotaBici10 = [UIImage imageNamed:@"01_Carlota_bici10.png"];
    UIImage *carlotaBici11 = [UIImage imageNamed:@"01_Carlota_bici11.png"];
    UIImage *carlotaBici12 = [UIImage imageNamed:@"01_Carlota_bici12.png"];
    UIImage *carlotaBici13 = [UIImage imageNamed:@"01_Carlota_bici13.png"];
    UIImage *carlotaBici14 = [UIImage imageNamed:@"01_Carlota_bici14.png"];
    NSArray *images = [[NSArray alloc] initWithObjects:carlotaBici1, carlotaBici2, carlotaBici3,
                       carlotaBici4, carlotaBici5, carlotaBici6, carlotaBici7, carlotaBici8,
                       carlotaBici9, carlotaBici10, carlotaBici11, carlotaBici12, carlotaBici13,
                       carlotaBici14, nil];
    
    [_carlota_bici setAnimationImages:images];
    [_carlota_bici setAnimationRepeatCount:2];
    [_carlota_bici setAnimationDuration:2.0f];
    
    CGSize sizeCarlota = _carlota.frame.size;
    CGRect endRect = CGRectMake(self.view.bounds.size.width/2 - sizeCarlota.width/2, 0,
                                sizeCarlota.width,
                                sizeCarlota.height);
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:5.0f];
    [_carlota setFrame:endRect];
    [UIView commitAnimations];
}

- (IBAction)linuxText:(id)sender {
    [_lblLinuxBafarada setText:NSLocalizedString(@"linux", nil)];
    [self showView:_linuxBafarada];
}

- (IBAction)carlotaText:(id)sender {
    [_lblCarlotaBafarada setText:NSLocalizedString(@"carlota", nil)];
    [self showView:_carlotaBafarada];
}

- (IBAction)tietaText:(id)sender {
    [_lblTietaBafarada setText:NSLocalizedString(@"tia", nil)];
    [self showView:_tietaBafarada];
}

- (IBAction)tietText:(id)sender {
    [_lblTietBafarada setText:NSLocalizedString(@"tio", nil)];
    [self showView:_tietBafarada];
}

-(void)showView: (UIView*) view{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0];
    [view setHidden:FALSE];
    [NSTimer scheduledTimerWithTimeInterval:3 target:self
                                   selector:@selector(hideView:) userInfo:@{@"view" : view}  repeats:YES];
    [UIView commitAnimations];
}

-(void)hideView:(NSTimer *)timer {
    id view = timer.userInfo[@"view"];
    [UIView beginAnimations: @"Fade In" context:nil];
    [UIView setAnimationDelay:0];
    [UIView setAnimationDuration:.5];
    //hide your view with Fad animation
    [view setHidden:TRUE];
    [UIView commitAnimations];
}

- (IBAction)clickTronc:(id)sender {

    if(!troncClicked) {
        [_tiet_cos stopAnimating];
    
        [self configTietTronc];
    
        [_tiet_cos startAnimating];
    
        [[SoundManager sharedManager] prepareToPlayWithSound:@"copfusta_tiet2.mp3"];
        [[SoundManager sharedManager] playSound:@"copfusta_tiet2.mp3"];
    }
}

- (void) notificationCallback:(NSNotification *)notification {
    
    if([[notification name] isEqualToString:SoundDidFinishPlayingNotification]) {
        Sound *sonido = (Sound*) [notification object];
        
        if([sonido.name isEqualToString:@"copfusta_tiet2.mp3"]) {
            [self configTietNormal];
            [_tiet_cos startAnimating];
        }
    }
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
