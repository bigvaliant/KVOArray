//
//  ViewController.m
//  KVOArray
//
//  Created by  valiant on 2018/3/10.
//  Copyright © 2018年 minvia1990. All rights reserved.
//

#import "ViewController.h"
#import "KVOArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //example code
    KVOArray *newArr1 = [[KVOArray alloc] initWithBlock:^(){
        NSLog(@"my block1");
    }];
    NSDictionary* dic = [NSDictionary dictionary];
    [newArr1 add:dic];
    [newArr1 remove:dic];
    
    NSMutableArray *newArr = [NSMutableArray array];
    KVOArray *newArr2 = [[KVOArray alloc] initWithArrayAndBlock:newArr KVOBlock:^(){
        NSLog(@"my block2");
    }];
    [newArr2 add:dic];
    [newArr2 remove:dic];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
