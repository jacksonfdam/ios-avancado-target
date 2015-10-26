//
//  ViewController.h
//  exercicio32
//
//  Created by Targettrust Treinamentos on 12/15/14.
//  Copyright (c) 2015 Targettrust Treinamentos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) NSURL *videoURL;
@property (strong, nonatomic) MPMoviePlayerController *videoController;

- (IBAction)captureVideo:(id)sender;

@end

