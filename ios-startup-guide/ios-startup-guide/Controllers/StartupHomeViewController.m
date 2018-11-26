//
//  StartupHomeViewController.m
//  ios-startup-guide
//
//  Created by Nicholas Hughes on 11/24/18.
//  Copyright © 2018 Nicholas Hughes. All rights reserved.
//

#import "StartupHomeViewController.h"
#import "StartupProjectSettingsutils.h"
#import "StartupChildViewController.h"
#import "ios_startup_guide-Swift.h"

@interface StartupHomeViewController () <StartupChildViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *environmentLabel;
@property (strong, nonatomic) IBOutlet UILabel *exampleSettingLabel;
@property (strong, nonatomic) IBOutlet UILabel *valueFromSwiftLabel;
- (IBAction)openButtonClicked:(id)sender;

@end

@implementation StartupHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"The StartupHomeView controller's view did load.");

    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource: @"Info" ofType: @"plist"];
    NSDictionary *infoPlist = infoPlist = [NSDictionary dictionaryWithContentsOfFile: path];
    NSDictionary *projectSettings = [infoPlist objectForKey:@"Project settings"];
    NSString *environment = [[projectSettings objectForKey:@"Environment"] lowercaseString];

    NSLog(@"The environment is %@", environment);
    self.environmentLabel.text = environment;

    NSLog(@"The example setting is %@", StartupProjectSettings.exampleSetting);
    self.exampleSettingLabel.text = StartupProjectSettings.exampleSetting;

    TestSwiftClass *testSwift = [[TestSwiftClass alloc] init];
    NSLog(@"The value from the Swift function is %@", [testSwift hello]);
    self.valueFromSwiftLabel.text = [testSwift hello];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)openButtonClicked:(id)sender {
    NSLog(@"Pressed the 'Open' button");
}

#pragma mark - Delegate methods for StartupChildViewControllerDelegate
- (void)StartupChildViewControllerDidFinish:(StartupChildViewController *)myStartupChildViewController {

}

@end
