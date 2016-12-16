//
//  Page2ViewController.m
//  LibroDeNoa
//
//  Created by dedam on 15/12/16.
//  Copyright © 2016 UAB. All rights reserved.
//

#import "Page2ViewController.h"
#import "MenuView.h"

@interface Page2ViewController ()
{
    MenuView* m_MenuView;
}
@end

@implementation Page2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Menu
    CGRect rect = CGRectMake(self.view.frame.size.width-300, 0, 300, self.view.frame.size.height - 400);
    m_MenuView = [[MenuView alloc] initWithFrameAux:rect];
    
    [self.view addSubview:m_MenuView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
