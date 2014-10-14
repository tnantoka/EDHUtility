//
//  EDHUtility.m
//  EDHUtility
//
//  Created by Tatsuya Tobioka on 10/14/14.
//  Copyright (c) 2014 tnantoka. All rights reserved.
//

#import "EDHUtility.h"

static NSString * const kIdentifier = @"com.bornneet.EDHUtility";

#define kIsFirstLaunchKey [NSString stringWithFormat:@"%@.%@", kIdentifier, @"kIsFirstLaunchKey"]

@implementation EDHUtility

+ (void)load {
    NSMutableDictionary *defaults = @{}.mutableCopy;
    
    [defaults setObject:@(YES) forKey:kIsFirstLaunchKey];
    
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
}

+ (void)showErrorWithMessage:(NSString *)message controller:(UIViewController *)controller {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Error", nil) message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"OK", nil) style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }]];
    
    [controller presentViewController:alertController animated:YES completion:nil];    
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);

    UIGraphicsBeginImageContext(size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(contextRef, color.CGColor);
    CGContextFillRect(contextRef, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (BOOL)isFirstLaunch {
    return [[NSUserDefaults standardUserDefaults] boolForKey:kIsFirstLaunchKey];
}

+ (void)setIsFirstLaunch:(BOOL)isFirstLaunch {
    [[NSUserDefaults standardUserDefaults] setBool:isFirstLaunch forKey:kIsFirstLaunchKey];
}


@end
