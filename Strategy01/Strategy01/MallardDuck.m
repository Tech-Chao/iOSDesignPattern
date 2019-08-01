//
//  MallardDuck.m
//  Strategy01
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "MallardDuck.h"
#import "Quack.h"
#import "Fly.h"

@implementation MallardDuck

- (instancetype)init {
    if (self = [super init]) {
        self.quackBehavior = [[Quack alloc] init];
        self.flyBehavior = [[FlyWithWings alloc] init];
    }
    return self;
}

- (void)display {
    NSLog(@"I'm a real Mallard Duck");
}

@end
