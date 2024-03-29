//
//  Validator.m
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "Validator.h"

@implementation NumericValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
        NSError *regError = nil;
        NSRegularExpression *regex = [NSRegularExpression
                                      regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
        NSUInteger numberOfMatches = [regex
                                      numberOfMatchesInString:[input text]
                                      options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
        // if there is not a single match // then return an error and NO
        if (numberOfMatches == 0)
        {
            if (error != nil) {
                NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
                NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
                NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
                NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey, nil];
                NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
                *error = [NSError errorWithDomain:@"InputValidationErrorDomain" code:1001 userInfo:userInfo];
            }
            return NO;
        }
    return YES;
}

@end


@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    NSUInteger numberOfMatches = [regex
                                  numberOfMatchesInString:[input text]
                                  options:NSMatchingAnchored range:NSMakeRange(0, [[input text] length])];
    // If there is not a single match
    // then return an error and NO
    if (numberOfMatches == 0)
    {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only letters", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:@"InputValidationErrorDomain" code:1002 userInfo:userInfo];
        }
        return NO;
        
    }
    return YES;
}
@end
