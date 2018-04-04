//
//  StoryboardInitViewController.m
//  HHRouterExample
//
//  Created by Light on 14-3-14.
//  Copyright (c) 2014年 Huohua. All rights reserved.
//

#import "StoryboardInitViewController.h"
#import "HHRouter.h"

@interface StoryboardInitViewController ()

@end

@implementation StoryboardInitViewController

+ (void)load {
    [[HHRouter shared] map:@"/user/:userId/"
         toControllerClass:[StoryboardInitViewController class]];
}

- (instancetype)init {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    StoryboardInitViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"StoryboardInitViewController"];
    return viewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *userId = self.params[@"userId"];

    NSLog(@"userId: %@", userId);

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 120, 200, 40)];
    label.text = [NSString stringWithFormat:@"UserID: %@", userId];

    UIView *containerView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    containerView.backgroundColor = [UIColor whiteColor];
    [containerView addSubview:label];

//    [self.view addSubview:containerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
