//
//  KVOArray.m
//  KVOArray
//
//  Created by  valiant on 2018/3/10.
//  Copyright © 2018年 minvia1990. All rights reserved.
//

#import "KVOArray.h"

@implementation KVOArray

- (id)initWithBlock:(KVOBlock)kvoBlock {
    if (self = [super init]) {
        self.kvoArr = [NSMutableArray array];
        self.kvoBlock = kvoBlock;
        [self addObserver:self
               forKeyPath:@"_kvoArr"
                  options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew
                  context:nil
         ];
    }
    return self;
}

- (id)initWithArrayAndBlock:(NSMutableArray*)kvoArr KVOBlock:(KVOBlock)kvoBlock {
    if (self = [super init]) {
        self.kvoArr = kvoArr;
        self.kvoBlock = kvoBlock;
        [self addObserver:self
               forKeyPath:@"_kvoArr"
                  options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew
                  context:nil
         ];
    }
    return self;
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"_kvoArr"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    //    NSLog(@"keyPath=%@,object=%@,change=%@,context=%@",keyPath,object,change,context);
    if (self.kvoBlock) {
        self.kvoBlock();
    }
}

-(void)add:(id)obj
{
    NSMutableArray* arr = [self mutableArrayValueForKey:@"_kvoArr"];
    [arr addObject:obj];
}

-(void)remove:(id)obj
{
    NSMutableArray* arr = [self mutableArrayValueForKey:@"_kvoArr"];
    [arr removeObject:obj];
}

-(void)update:(id)obj Index:(int)index
{
    NSMutableArray* arr = [self mutableArrayValueForKey:@"_kvoArr"];
    [arr replaceObjectAtIndex:index withObject:obj];
}

@end
