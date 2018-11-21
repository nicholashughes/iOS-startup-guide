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

+ (NSArray *)validEnvironments
{
    if (!_validEnvironments)
    {
        _validEnvironments = @[@"dev", @"test", @"stage", @"prod"];
    }
    return _validEnvironments;
}

@end
