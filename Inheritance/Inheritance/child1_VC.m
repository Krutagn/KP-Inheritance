//
//  child1_VC.m
//  Inheritance
//
//  Created by krutagn on 24/06/16.
//  Copyright © 2016 com.zaptechsolution. All rights reserved.
//

#import "child1_VC.h"

@interface child1_VC ()

@end

@implementation child1_VC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
//    NSArray *arr = [[NSArray alloc]initWithObjects:@"kp1.png",@"0.png", nil];
//
//    
//   NSArray *arr1 = [[NSArray alloc]initWithObjects:@"i m Khan",@"i m not Khan", nil];
    
    NSMutableDictionary* dic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"bhavik",@"name",@"1.png",@"image", nil];
    
    [arr addObject:dic];
    
     dic = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"kp",@"name",@"2.png",@"image", nil];
    
    [arr addObject:dic];
    
   [super prantmethod:arr];
 

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
