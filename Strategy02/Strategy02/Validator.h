//
//  Validator.h
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputValidateProtocol.h"

@interface NumericValidator : NSObject <InputValidateProtocol>

@end

@interface AlphaInputValidator : NSObject <InputValidateProtocol>

@end




