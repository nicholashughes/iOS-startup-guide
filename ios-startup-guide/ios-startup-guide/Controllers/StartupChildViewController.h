//
//  StartupChildViewController.h
//  ios-startup-guide
//
//  Created by Nicholas Hughes on 11/25/18.
//  Copyright © 2018 Nicholas Hughes. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// Forward Declaration
@class StartupChildViewController;
@protocol StartupChildViewControllerDelegate <NSObject>

- (void)startupChildViewControllerDidFinish:(StartupChildViewController *)myStartupChildViewController;

@end

@interface StartupChildViewController : UIViewController

@property (weak, nonatomic) id<StartupChildViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
