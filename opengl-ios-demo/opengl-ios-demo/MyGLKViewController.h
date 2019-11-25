//
//  MyGLKViewController.h
//  opengl-ios-demo
//
//  Created by glumes on 2019/11/25.
//  Copyright © 2019 glumes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MyGLKViewController : GLKViewController
{
       GLuint vertexBufferID;
}

@property (strong, nonatomic) GLKBaseEffect *baseEffect;

@end

NS_ASSUME_NONNULL_END
