//
//  ParentClass_VC.m
//  Inheritance
//
//  Created by krutagn on 24/06/16.
//  Copyright © 2016 com.zaptechsolution. All rights reserved.
//

#import "ParentClass_VC.h"

@interface ParentClass_VC ()<UIScrollViewDelegate>

{
    UIScrollView *ScrollView;
    UILabel* label;
    UILabel* lbl;
    int offcet;
    int contNum;
    NSArray *mainarr;
}
@end

@implementation ParentClass_VC


- (void)viewDidLoad {
    [super viewDidLoad];
    contNum = 0;
    offcet = 0;
    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(void)prantmethod :(NSArray *)arr
{
    mainarr = arr;
    ScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0,100,self.view.frame.size.width,self.view.frame.size.height/2)];
    ScrollView.scrollEnabled=YES;
    ScrollView.userInteractionEnabled=YES;
    ScrollView.contentSize = CGSizeMake(ScrollView.frame.size.width*arr.count,ScrollView.frame.size.height/2);
    
    ScrollView.pagingEnabled = YES;
    ScrollView.delegate = self;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:ScrollView];
    
    
    for (int i = 0; i< arr.count; i++)
    {
        NSDictionary *dic = [arr objectAtIndex:i];
        CGRect frame;
        frame.origin.x = ScrollView.frame.size.width *i;
        frame.size = ScrollView.frame.size;
        
        CGRect frame1;
        frame1.origin.x = ScrollView.frame.size.width *i;
        frame1.size.height = 30;
        frame1.size.width = 200;
        
        UIImageView *imageView =[[UIImageView alloc]initWithFrame:frame];
        [imageView setImage:[UIImage imageNamed:[dic valueForKey:@"image"]]];
       
        
        [ScrollView addSubview:imageView];

        label = [[UILabel alloc] initWithFrame:frame1];
        label.backgroundColor = [UIColor redColor];
        label.textColor=[UIColor yellowColor];
        label.text =[dic valueForKey:@"name"];
        [ScrollView addSubview:label];
        
        //A = [[NSMutableArray alloc]initWithArray:arr1];
    }
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(30,500,150,40)];
    lbl.backgroundColor = [UIColor redColor];
    lbl.textColor=[UIColor yellowColor];
    lbl.text = [[arr objectAtIndex:0]valueForKey:@"name"];
    [self.view addSubview:lbl];
}


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
   
    if (offcet< ScrollView.contentOffset.x)
        {
            contNum = contNum + 1;
            NSLog(@"%ld",(long)contNum);
            offcet = ScrollView.contentOffset.x;
          
        }
        else if(offcet> ScrollView.contentOffset.x)
        {
            contNum = contNum - 1;
            NSLog(@"%ld",(long)contNum);
            offcet = ScrollView.contentOffset.x;

        }
        else{
            
        }
        //lbl.text = [A objectAtIndex:contNum];
    lbl.text = [[mainarr objectAtIndex:contNum] valueForKey:@"name"];
        
}

@end
