//
//  Duck.m
//  Strategy01
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "Duck.h"
#import "Fly.h"
#import "Quack.h"

@implementation Duck

- (void)display {
    NSLog(@"Duck display");
}

- (void)swim {
    NSLog(@"Duck siwm");
}

- (void)performFly {
    [self.flyBehavior fly];
}
- (void)performQuack {
    [self.quackBehavior quack];
}

@end
