//
//  ViewController.h
//  Cryptex
//
//  Created by Marc DIJOUX on 28/06/13.
//  Copyright (c) 2013 Marc DIJOUX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *message;

@property (weak, nonatomic) IBOutlet UITextField *messageCrypt;


- (IBAction)crypter:(id)sender;
- (IBAction)decrypter:(id)sender;
- (IBAction)effacer:(id)sender;
- (NSString*)codec:(NSString*)text withRotation:(int)r;
@end


