//
//  ViewController.m
//  ImageIOSample01
//
//  Created by CSIEVNUT403 on 2015/6/15.
//  Copyright (c) 2015年 403. All rights reserved.
//

#import "ViewController.h"
#import <ImageIO/ImageIO.h>

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *imageInfo;


- (void)getImageFromWeb;
- (void)showImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self showImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getImageFromWeb {
    
}

- (void)showImage {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"IMG_8152.jpg" withExtension:nil];
    
    CGImageSourceRef imageSource = CGImageSourceCreateWithURL((CFURLRef) url, NULL);
    
    CGImageRef image = CGImageSourceCreateImageAtIndex(imageSource, 0, NULL);
    
    [[self imageView] setImage:[UIImage imageWithCGImage:image]];
}

@end
