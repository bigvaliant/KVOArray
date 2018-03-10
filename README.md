# KVOArray
a common kvo array

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
