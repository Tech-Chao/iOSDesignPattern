//
//  ViewController.m
//  Strategy01
//
//  Created by FishYu on 2019/8/1.
//  Copyright © 2019 FY_Developer. All rights reserved.
//

#import "ViewController.h"
#import "Duck.h"
#import "MallardDuck.h"

#import "Fly.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Duck *duck = [[Duck alloc] init];
    [duck display];
    // 因为父类并未提供 flyBehavior、quackBehavior对象。一下两个方法执行不会有输出
    [duck performQuack];
    [duck performFly];
    
    Duck *mDuck = [[MallardDuck alloc] init];
    [mDuck display];
    [mDuck performQuack];
    [mDuck performFly];
    
    mDuck.flyBehavior = [[FlyWithNoWay alloc] init];
    [mDuck performFly];
    
    [self addObserver:mDuck forKeyPath:@"1" options:0 context:0];
}


@end
