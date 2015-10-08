//
//  ImageViewController.m
//  iOSDevelopment
//
//  Created by kiki on 10/7/15.
//  Copyright © 2015 kiki. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDownDismissAction)];
    swipeGesture.direction = UISwipeGestureRecognizerDirectionDown;
    
    self.view.userInteractionEnabled = YES;
    [self.view addGestureRecognizer:swipeGesture];
    
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    
    // Do any additional setup after loading the view.
}

- (void)swipeDownDismissAction {
    [self dismissViewControllerAnimated:YES completion:nil];
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
