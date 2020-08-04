//
//  GHSider.m
//  GHSlider
//
//  Created by mac on 2020/8/4.
//  Copyright © 2020 mac. All rights reserved.
//

#import "GHSider.h"

@interface GHSider()

@property (nonatomic , strong) UIButton *left;
@property (nonatomic , strong) UIButton *right;
@property (nonatomic , strong) UIView *sider;

@end

@implementation GHSider

- (instancetype)init {
    if (self == [super init]) {
        [self addViews];
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        [self addViews];
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)addViews {
    self.sider.frame = CGRectMake(2, 2, 96, 40);
    [self addSubview:self.sider];
    [self addSubview:self.left];
    [self addSubview:self.right];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.left.frame = CGRectMake(0, 0, self.bounds.size.width * 0.5, self.bounds.size.height);
    self.right.frame = CGRectMake(self.bounds.size.width * 0.5, 0, self.bounds.size.width * 0.5, self.bounds.size.height);
}

- (void)clickRight {
    [UIView animateWithDuration:0.25 animations:^{
        self.sider.frame = CGRectMake(102, 2, 96, 40);
    }];
}

- (void)clickLeft {
    [UIView animateWithDuration:0.25 animations:^{
        self.sider.frame = CGRectMake(2, 2, 96, 40);
    }];
}

- (UIView *)sider {
    if (_sider == nil) {
        _sider = [[UIView alloc]init];
        _sider.backgroundColor = [UIColor whiteColor];
        _sider.layer.shadowOpacity = 0.8;
        _sider.layer.shadowColor = [UIColor darkGrayColor].CGColor;
        _sider.layer.cornerRadius = 9;
        _sider.layer.shadowOffset = CGSizeMake(0,1);
    }
    return _sider;
}

- (UIButton *)right {
    if (_right == nil) {
        _right = [[UIButton alloc]init];
        _right.backgroundColor = [UIColor clearColor];
        [_right setTitle:@"右侧" forState:UIControlStateNormal];
        [_right setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _right.titleLabel.font = [UIFont systemFontOfSize:12];
        [_right addTarget:self action:@selector(clickRight) forControlEvents:UIControlEventTouchUpInside];
    }
    return _right;
}

- (UIButton *)left {
    if (_left == nil) {
        _left = [[UIButton alloc]init];
        _left.backgroundColor = [UIColor clearColor];
        [_left setTitle:@"左侧" forState:UIControlStateNormal];
        _left.titleLabel.font = [UIFont systemFontOfSize:12];
         [_left setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_left addTarget:self action:@selector(clickLeft) forControlEvents:UIControlEventTouchUpInside];
    }
    return _left;
}

@end
