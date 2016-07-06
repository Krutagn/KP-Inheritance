//
//  child2_VC.m
//  Inheritance
//
//  Created by krutagn on 24/06/16.
//  Copyright © 2016 com.zaptechsolution. All rights reserved.
//

#import "child2_VC.h"
@interface child2_VC ()

@end
@implementation child2_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arr = [[NSMutableArray alloc]init];

    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"krutagn",@"name",@"1.png",@"image", nil];
    
    [arr addObject:dic];
    
    dic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"patel",@"name",@"2.png",@"image", nil];
    
    [arr addObject:dic];
    
    dic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Happy",@"name",@"1.png",@"image", nil];
    
    [arr addObject:dic];
    
    [super prantmethod:arr];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
