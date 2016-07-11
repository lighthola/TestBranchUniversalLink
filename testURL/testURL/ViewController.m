//
//  ViewController.m
//  testURL
//
//  Created by user on 2016/7/6.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 透過 WebView 開啟
- (IBAction)webViewButtonPressed:(id)sender {
    
    UIWebView *web = [UIWebView new];
    web.frame = CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2);
    [self.view addSubview:web];
    web.backgroundColor = [UIColor blueColor];
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://ddf5.app.link/CbOavrUgOu"]]];
}

// openURL 直接開啟
- (IBAction)openURLButtonPressed
:(id)sender {
    
//    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"test-universal-link://"]]) {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://ddf5.app.link/CbOavrUgOu"]];
//    }
//    else {
//        NSLog(@"NOT!!");
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
