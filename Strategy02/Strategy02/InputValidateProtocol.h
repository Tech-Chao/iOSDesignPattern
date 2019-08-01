//
//  InputValidateProtocol.h
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol InputValidateProtocol <NSObject>

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end
