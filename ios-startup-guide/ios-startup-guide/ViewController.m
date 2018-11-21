//
//  ViewController.m
//  ios-startup-guide
//
//  Created by Nicholas Hughes on 11/20/18.
//  Copyright © 2018 Nicholas Hughes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property (strong, nonatomic) IBOutlet UILabel *environmentLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource: @"Info" ofType: @"plist"];
    NSDictionary *infoPlist = infoPlist = [NSDictionary dictionaryWithContentsOfFile: path];
    NSDictionary *projectSettings = [infoPlist objectForKey:@"Project settings"];
    NSString *environment = [[projectSettings objectForKey:@"Environment"] lowercaseString];

    NSLog(@"The environment is %@", environment);
    self.environmentLabel.text = environment;
}


@end
