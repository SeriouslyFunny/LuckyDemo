//
//  ViewController.m
//  LuckyDemo
//
//  Created by JuZhenBaoiMac on 2017/7/3.
//  Copyright © 2017年 JuZhenBaoiMac. All rights reserved.
//

#import "ViewController.h"

#import "HSFLuckyView.h"

@interface ViewController ()

@property (nonatomic,strong) HSFLuckyView *luckyView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.luckyView = [[HSFLuckyView alloc]initWithFrame:CGRectMake(50, 150, 300, 200)];
    self.luckyView.center = CGPointMake(self.view.center.x, self.luckyView.center.y);
    self.luckyView.size = [NSIndexPath indexPathForRow:3 inSection:3];// 3*3
    self.luckyView.arr_source = @[@{@"title":@"",@"image":@"美女1"},
                                  @{@"title":@"50积分",@"image":@""},
                                  @{@"title":@"",@"image":@"空空如也"},
                                  @{@"title":@"",@"image":@"money"},
                                  @{@"title":@"",@"image":@"如花"},
                                  @{@"title":@"",@"image":@"美女2"},
                                  @{@"title":@"100积分",@"image":@""},
                                  @{@"title":@"500积分",@"image":@""}];
    self.luckyView.startBtnImgName = @"start";//开始按钮图片
    self.luckyView.bgImgName = @"bg";//背景图片
    self.luckyView.direction = HSFDirection_cw;//方向
    self.luckyView.stopIndex = @"1";//指定结果
    self.luckyView.maskViewColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];//遮罩颜色
    
    /* 最后必须setUp */
    [self.luckyView setUp];
    
    //圆角
    [self.luckyView itemCornerRadius:10 borderColor:[UIColor redColor] borderWidth:1];
    self.luckyView.layer.masksToBounds = YES;
    self.luckyView.layer.cornerRadius = 10;
    
    [self.view addSubview:self.luckyView];
    
}
- (IBAction)stopACTION:(UIButton *)sender {
    [self.luckyView stopACTION];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
