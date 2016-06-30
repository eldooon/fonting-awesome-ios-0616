//
//  ViewController.m
//  fonting-awesome-ios-0616
//
//  Created by Eldon Chan on 6/30/16.
//  Copyright © 2016 Eldon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //working with Fonting Awesome
    FAKZocial *twitterIcon = [FAKZocial twitterIconWithSize:20];
    [twitterIcon addAttribute:NSForegroundColorAttributeName value:[UIColor
                                                                 blackColor]];
    NSAttributedString *twitterAttributed = [twitterIcon attributedString];
    
    [self.button setAttributedTitle:twitterAttributed forState:
     UIControlStateNormal];
    
    //working with CWStatusBar
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonTapped:(id)sender {
    
    CWStatusBarNotification *notification = [CWStatusBarNotification new];
    [notification displayNotificationWithMessage:@"WOW WHAT A COOOOLL BUTTON!" forDuration:1.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
