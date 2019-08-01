//
//  CustomTextField.h
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidateProtocol.h"


@interface CustomTextField : UITextField

@property (nonatomic, strong) id<InputValidateProtocol> inputValidator;

- (BOOL)vaild;

@end

