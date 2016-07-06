//
//  Main_VC.m
//  Inheritance
//
//  Created by krutagn on 24/06/16.
//  Copyright © 2016 com.zaptechsolution. All rights reserved.
//

#import "Main_VC.h"
#import "ParentClass_VC.h"
#import "child1_VC.h"
#import "child2_VC.h"

@implementation Main_VC

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 addTarget:self
                action:@selector(child1Action)
     forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"Child 1" forState:UIControlStateNormal];
    button1.frame = CGRectMake(80, 210.0, 160.0, 40.0);
    button1.backgroundColor = [UIColor redColor];
    [self.view addSubview:button1];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2 addTarget:self
                action:@selector(child2Action)
      forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitle:@"Child 2" forState:UIControlStateNormal];
    button2.frame = CGRectMake(80, 410.0, 160.0, 40.0);
    button2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button2];
}

-(void) child1Action
{
    child1_VC *vc1 = [[child1_VC alloc]init];
    [self.navigationController pushViewController:vc1 animated:YES];
}

-(void) child2Action
{
    child2_VC *vc2 = [[child2_VC alloc]init];
    [self.navigationController pushViewController:vc2 animated:YES];

}
@end
