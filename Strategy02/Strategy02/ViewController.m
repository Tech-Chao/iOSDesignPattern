//
//  ViewController.m
//  Strategy02
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "ViewController.h"
#import "Validator.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.AlaphaTextField.inputValidator = [[AlphaInputValidator alloc] init];
    self.numericTextField.inputValidator = [[NumericValidator alloc] init];
    // Do any additional setup after loading the view.
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField vaild];
    }
}


@end
