//
//  ViewController.m
//  分段控制视图
//
//  Created by huhang on 15/11/6.
//  Copyright (c) 2015年 huhang. All rights reserved.
//

#import "ViewController.h"
#import "HHSegmentView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    NSArray *titles = @[@"效果浏览",@"微站设置",@"数据统计",@"页面风格",@"财务统计",@"数据分析",@"官网设置",@"理财分析"];
   
    for (int i=0; i<titles.count; i++) {
        
       UIViewController * huVC=[[UIViewController alloc] init];
        switch (i) {
            case 0:
                huVC.view.backgroundColor=[UIColor grayColor];
                [self addChildViewController:huVC];
                break;
            case 1:
                huVC.view.backgroundColor=[UIColor blueColor];
                [self addChildViewController:huVC];
                break;
            case 2:
                huVC.view.backgroundColor=[UIColor redColor];
                [self addChildViewController:huVC];
                break;
            case 3:
                huVC.view.backgroundColor=[UIColor brownColor];
                [self addChildViewController:huVC];
                break;
            case 4:
                huVC.view.backgroundColor= [UIColor cyanColor];
                [self addChildViewController:huVC];
                break;
            case 5:
                huVC.view.backgroundColor= [UIColor orangeColor];
                [self addChildViewController:huVC];
                break;
            case 6:
                huVC.view.backgroundColor= [UIColor yellowColor];
                [self addChildViewController:huVC];
                break;
            case 7:
                huVC.view.backgroundColor= [UIColor magentaColor];
                [self addChildViewController:huVC];
                break;
                
            default:
                break;
        }
    }
   
    HHSegmentView *segmentView = [HHSegmentView segmentViewWithTitles:titles viewControls:self.childViewControllers];
    [self.view addSubview:segmentView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
