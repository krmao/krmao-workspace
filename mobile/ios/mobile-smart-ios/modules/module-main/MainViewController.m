//
// Created by krmao on 2019-04-16.
// Copyright (c) 2019 smart. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property(nonatomic, strong) UIImageView *imageView;

@end

@implementation MainViewController {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.blueColor;

    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 400)];
    // self.imageView.image = [UIImage imageNamed:@"liblibrary-base-resource.bundle/routeMap_annotation_start.png"];
    self.imageView.image = [UIImage imageNamed:@"smartbase.framework/start.png"];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.backgroundColor = UIColor.redColor;

    [self.view addSubview:self.imageView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)dealloc {

}

@end
