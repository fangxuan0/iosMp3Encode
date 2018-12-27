//
//  ViewController.m
//  PhuketTour
//
//  Created by 司伟红 on 2018/12/23.
//  Copyright © 2018年 司伟红. All rights reserved.
//

#import "ViewController.h"
#import "Mp3Encoder.hpp"
#import "CommonUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"按钮点击事件");
    Mp3Encoder *encoder = new Mp3Encoder();
    // 源文件的的路径
    const char* pcmFilePath = [[CommonUtil bundlePath:@"vocal.pcm"] cStringUsingEncoding:NSUTF8StringEncoding];
    // 要生成的mp3文件的路径
    const char *mp3FilePath = [[CommonUtil documentsPath:@"vocal.mp3"] cStringUsingEncoding:NSUTF8StringEncoding];
    int sampleRate = 44100;
    int channels = 2;
    int bitRate = 128 * 1024;
    // 初始化解码器，传入源文件路径，生成的文件路径，采样频率，声道数，码率
    encoder->Init(pcmFilePath, mp3FilePath, sampleRate, channels, bitRate);
    // 编码
    encoder->Encode();
    //关闭文件
    encoder->Destory();
    delete encoder;
    NSLog(@"Encode Success");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
