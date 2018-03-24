//
//  ViewController.m
//  LBYDescription
//
//  Created by 叶晓倩 on 2018/3/23.
//  Copyright © 2018年 bill. All rights reserved.
//

#import "ViewController.h"
#import "LBYDescriptionModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LBYDescriptionModel *model = [[LBYDescriptionModel alloc] init];
    model.lbybool = true;
    model.lbyBOOL = NO;
    model.lbychar = 'a';
    model.lbyunchar = 'b';
    model.lbyshort = -12;
    model.lbyunshort = 99;
    model.lbyint = -100;
    model.lbyinteger = -999;
    model.lbyunint = 200;
    model.lbyuninteger = 2000;
    model.lbylong = 99999;
    model.lbyunlong = 9999999;
    model.lbylonglong = 234234234234;
    model.lbyunlonglong = 34132413241324;
    model.lbyfloat = 99.3;
    model.lbycgfloat = 222.2;
    model.lbydouble = 243.234;
    model.lbyclass = [NSData class];
    model.lbyid = [[NSObject alloc] init];
    model.lbystring = @"成功或失败";
    model.lbyimage = [[UIImage alloc] init];
    model.lbypoint = CGPointMake(22, 33);
    model.lbysize = CGSizeMake(99.2, 33.2);
    model.lbyrect = CGRectMake(11.1, 22.2, 33.3, 44.4);
    model.lbyvector = CGVectorMake(332.2, 33.2);
    model.lbyform = CGAffineTransformMake(1, 2, 3, 4, 5, 6);
    struct CATransform3D d1 = {1.1, 2.2, 3.3, 4.4,
                        5.5, 6.6, 7.7, 8.8,
                        9.9, 10.10, 11.11, 12.12,
                        13.13, 14.14, 15.15, 16.16};
    model.lbyform3D = d1;
    model.lbyrange = NSMakeRange(12, 23);
    model.lbyoffset = UIOffsetMake(88.22, 3434.22);
    model.lbyinsets = UIEdgeInsetsMake(10, 10, 10, 10);
    
    NSLog(@"%@", model.description);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
