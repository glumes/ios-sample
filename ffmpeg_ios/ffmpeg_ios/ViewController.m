//
//  ViewController.m
//  ffmpeg_ios
//
//  Created by glumes on 2019/11/14.
//  Copyright © 2019 glumes. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)initAction:(id)sender {
    NSLog(@"this is init log");
    
    NSAlert *alert = [[NSAlert alloc]init];
    
    [alert addButtonWithTitle:@"Ok"];
    
    alert.messageText = @"hello world";
    
    alert.informativeText = @"this is my first mac app";
    
    [alert beginSheetModalForWindow:[self.view window] completionHandler:^(NSModalResponse returnCode){
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"this is init log");
        }
    }];
}


@end
