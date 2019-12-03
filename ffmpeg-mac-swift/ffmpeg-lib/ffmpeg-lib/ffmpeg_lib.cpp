//
//  ffmpeg_lib.cpp
//  ffmpeg-lib
//
//  Created by glumes on 2019/12/3.
//  Copyright © 2019 glumes. All rights reserved.
//

#include <iostream>
#include "ffmpeg_lib.hpp"
#include "ffmpeg_libPriv.hpp"

void ffmpeg_lib::HelloWorld(const char * s)
{
    ffmpeg_libPriv *theObj = new ffmpeg_libPriv;
    theObj->HelloWorldPriv(s);
    delete theObj;
};

void ffmpeg_libPriv::HelloWorldPriv(const char * s) 
{
    std::cout << s << std::endl;
};

