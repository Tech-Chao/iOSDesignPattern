//
//  Duck.h
//  Strategy01
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

@interface Duck : NSObject
/// 不变的部分
- (void)swim;
- (void)display;

/// 可变部分(子类在生成构造时设置)
@property (nonatomic, strong) id<FlyBehavior> flyBehavior;
@property (nonatomic, strong) id<QuackBehavior> quackBehavior;

- (void)performFly;
- (void)performQuack;

@end
