//
//  ViewController.m
//  KNPodlibDemo
//
//  Created by devzkn on 27/04/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//

#import "ViewController.h"
#import <KNPodlib/KNTestWebViewController.h>
#import <KNPodlib/KNFeedbackViewController.h>
#import <KNPodlib/HCPEnvrionmentalVariables.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)setupFeedback{
    
    
    //         跳转到反馈页面
    KNFeedbackViewController *feedbackVC = [[KNFeedbackViewController alloc] init];
    //    feedbackVC.image = ;//截图必须在弹反馈页面之前create。设置默认的图片
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:feedbackVC];
    [self presentViewController:nav animated:YES completion:nil];
    //            [self.navigationController pushViewController:feedbackVC animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self setupFeedback];
    //        [self setupKNTestWebViewController];
}
//app嵌入H5页面的通用模版的 例子
- (void)setupKNTestWebViewController{
    
    
    [[HCPEnvrionmentalVariables shareEnvrionmentalVariables] setEnvrionmentalVariables:ENVRIONMENTAL_VARIABLES_UAT];
    
    
    KNTestWebViewController *vc = [[KNTestWebViewController alloc]init];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

@end
