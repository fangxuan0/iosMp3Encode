//
//  Mp3Encoder.hpp
//  PhuketTour
//
//  Created by 司伟红 on 2018/12/23.
//  Copyright © 2018年 司伟红. All rights reserved.
//

#ifndef Mp3Encoder_hpp
#define Mp3Encoder_hpp

#include <stdio.h>
#import "lame.h"

class Mp3Encoder{
    private:
    FILE* pcmFile;
    FILE* mp3File;
    lame_t lameClient;
    
    public :
    Mp3Encoder();
    ~Mp3Encoder();
    int Init(const char* pcmFilePath, const char* mp3FilePath, int sampleRate, int channels, int bitRate);
    void Encode();
    void Destory();
};

#endif /* Mp3Encoder_hpp */
