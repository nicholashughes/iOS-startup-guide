//
//  StartupChildViewController.m
//  ios-startup-guide
//
//  Created by Nicholas Hughes on 11/25/18.
//  Copyright © 2018 Nicholas Hughes. All rights reserved.
//

#import "StartupChildViewController.h"

@interface StartupChildViewController ()
- (IBAction)closeButtonClicked:(id)sender;

@end

@implementation StartupChildViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"StartupChildView" bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Actions
- (IBAction)closeButtonClicked:(id)sender
{
    NSLog(@"Pressed the 'Close' button");
    [self.delegate startupChildViewControllerDidFinish:self];
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
