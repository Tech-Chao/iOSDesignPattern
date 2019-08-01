//
//  CustomTextField.m
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)vaild {
    NSError *error;
    BOOL validationResult = [_inputValidator validateInput:self error:&error];
    if (!validationResult) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                            message:[error localizedFailureReason] delegate:nil
                                                  cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                                  otherButtonTitles:nil];
        [alertView show];
    }
    return validationResult;
}
@end
