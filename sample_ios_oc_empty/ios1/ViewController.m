//
//  ViewController.m
//  ios1
//
//  Created by glumes on 2019/8/17.
//  Copyright © 2019 glumes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *myBtn;

@property (nonatomic,strong) NSMutableArray * labels;

@end

@implementation ViewController

int nextY = 80;

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor grayColor];
//
//    self.labels = [NSMutableArray array];
//
//    UIButton * addBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    addBtn.frame = CGRectMake(30,30, 60, 40);
//
//    [addBtn setTitle:@"添加" forState:UIControlStateNormal];
//
//    [addBtn addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton* removeBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    removeBtn.frame = CGRectMake(230, 30, 60,40);
//
//    [removeBtn setTitle:@"删除" forState:UIControlStateNormal];
//
//    [removeBtn addTarget:self action:@selector(remove:) forControlEvents:UIControlEventTouchUpInside];
//
//    [self.view addSubview:addBtn];
//    [self.view addSubview:removeBtn];
//
}

- (void) add:(id)sender{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, nextY, 160, 30)];
    
    label.text = @"疯狂 ios 讲义";
    [self.labels addObject: label];
    [self.view addSubview:label];
    nextY += 50;
}

- (void)remove:(id)sender {
    if ([self.labels count] > 0) {
        [[self.labels lastObject] removeFromSuperview];
        [self.labels removeLastObject];
        nextY -=50;
    }
}

- (IBAction)myBtnClick:(id)sender {
    
    NSLog(@"this is log");
}

@end
