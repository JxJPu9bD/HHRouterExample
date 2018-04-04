//
//  CodeInitViewController.m
//  HHRouterExample
//
//  Created by Cyandnow on 2018/4/4.
//  Copyright © 2018年 Huohua. All rights reserved.
//

#import "CodeInitViewController.h"
#import "HHRouter.h"

@interface CodeInitViewController ()

@end

@implementation CodeInitViewController

+ (void)load {
    [[HHRouter shared] map:@"/code/:ID/" toControllerClass:[CodeInitViewController class]];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"从 Code 加载的 ViewController";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];
    
    NSString *ID = self.params[@"ID"];
    NSLog(@"ID: %@", ID);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
