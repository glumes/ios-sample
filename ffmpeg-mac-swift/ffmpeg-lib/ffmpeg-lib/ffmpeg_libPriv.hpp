//
//  ffmpeg_libPriv.hpp
//  ffmpeg-lib
//
//  Created by glumes on 2019/12/3.
//  Copyright © 2019 glumes. All rights reserved.
//

/* The classes below are not exported */
#pragma GCC visibility push(hidden)

class ffmpeg_libPriv
{
    public:
    void HelloWorldPriv(const char *);
};

#pragma GCC visibility pop
