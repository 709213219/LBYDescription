//
//  LBYDescriptionModel.h
//  LBYDescription
//
//  Created by 叶晓倩 on 2018/3/23.
//  Copyright © 2018年 bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface LBYDescriptionModel : NSObject

@property (nonatomic, assign) bool lbybool;
@property (nonatomic, assign) BOOL lbyBOOL;
@property (nonatomic, assign) char lbychar;
@property (nonatomic, assign) unsigned char lbyunchar;
@property (nonatomic, assign) short lbyshort;
@property (nonatomic, assign) unsigned short lbyunshort;
@property (nonatomic, assign) int lbyint;
@property (nonatomic, assign) NSInteger lbyinteger;
@property (nonatomic, assign) unsigned int lbyunint;
@property (nonatomic, assign) NSUInteger lbyuninteger;
@property (nonatomic, assign) long lbylong;
@property (nonatomic, assign) unsigned long lbyunlong;
@property (nonatomic, assign) long long lbylonglong;
@property (nonatomic, assign) unsigned long long lbyunlonglong;
@property (nonatomic, assign) float lbyfloat;
@property (nonatomic, assign) CGFloat lbycgfloat;
@property (nonatomic, assign) double lbydouble;
@property (nonatomic, assign) Class lbyclass;
@property (nonatomic, strong) id lbyid;
@property (nonatomic, copy  ) NSString *lbystring;
@property (nonatomic, strong) UIImage *lbyimage;
@property (nonatomic, assign) CGPoint lbypoint;
@property (nonatomic, assign) CGSize lbysize;
@property (nonatomic, assign) CGRect lbyrect;
@property (nonatomic, assign) CGVector lbyvector;
@property (nonatomic, assign) CGAffineTransform lbyform;
@property (nonatomic, assign) CATransform3D lbyform3D;
@property (nonatomic, assign) NSRange lbyrange;
@property (nonatomic, assign) UIOffset lbyoffset;
@property (nonatomic, assign) UIEdgeInsets lbyinsets;

@end
