//
//  KVOArray.h
//  KVOArray
//
//  Created by  valiant on 2018/3/10.
//  Copyright © 2018年 minvia1990. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVOArray : NSObject

typedef void (^KVOBlock)(void);

@property (strong, nonatomic) NSMutableArray *kvoArr;
@property (strong, nonatomic) KVOBlock kvoBlock;

- (id)initWithBlock:(KVOBlock)kvoBlock;
- (id)initWithArrayAndBlock:(NSMutableArray*)kvoArr KVOBlock:(KVOBlock)kvoBlock;

-(void)add:(id)obj;
-(void)remove:(id)obj;
-(void)update:(id)obj Index:(int)index;

@end
