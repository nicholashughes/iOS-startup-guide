//
//  StartupProjectSettingsUtils.m
//  ios-startup-guide
//
//  Created by Nicholas Hughes on 11/21/18.
//  Copyright © 2018 Nicholas Hughes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartupProjectSettingsUtils.h"

@interface StartupProjectSettings ()

@end

@implementation StartupProjectSettings

// For private internal use only
static NSArray *_validEnvironments = nil;
static NSString *_environment = nil;

+ (NSArray *)validEnvironments
{
    if (!_validEnvironments)
    {
        _validEnvironments = @[@"dev", @"test", @"stage", @"prod"];
    }
    return _validEnvironments;
}

+ (NSString *)environment
{
    if (!_environment)
    {
        NSString *path = [[NSBundle bundleForClass:self.class] pathForResource: @"Info" ofType: @"plist"];
        NSDictionary *infoPlist = infoPlist = [NSDictionary dictionaryWithContentsOfFile: path];
        NSDictionary *projectSettings = [infoPlist objectForKey:@"Project settings"];
        _environment = [[projectSettings objectForKey:@"Environment"] lowercaseString];

        // If we have an invalid environment, raise an exception
        if (![[self validEnvironments] containsObject:_environment])
        {
            NSLog(@"Invalid environment '%@' - exiting app", _environment);
            NSException* invalidEnvironmentException = [NSException
                                                        exceptionWithName:@"InvalidEnvironmentException"
                                                        reason:@"Invalid Project Environment"
                                                        userInfo:nil];
            @throw invalidEnvironmentException;
        }
    }

    return _environment;
}

+ (NSString *)exampleSetting
{
    NSString *exampleSetting = nil;
    if ([self.environment isEqualToString:@"dev"])
    {
        exampleSetting = @"Dev Example Setting";
    }
    else if ([self.environment isEqualToString:@"test"])
    {
        exampleSetting = @"Test Example Setting";
    }
    else if ([self.environment isEqualToString:@"stage"])
    {
        exampleSetting = @"Stage Example Setting";
    }
    else if ([self.environment isEqualToString:@"prod"])
    {
        exampleSetting = @"Prod Example Setting";
    }
    return exampleSetting;
}

@end
