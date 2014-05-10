//
//  ViewController.m
//  Cryptex
//
//  Created by Marc DIJOUX on 28/06/13.
//  Copyright (c) 2013 Marc DIJOUX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString*)codec:(NSString*)text withRotation:(int)r
{
    int l = [text length];
    NSMutableString *s = [[NSMutableString alloc]init];
    for(int i =0 ;i<l; i++) {
        char c = [text characterAtIndex:i];
        if(c>64 && c<91){
            c = c + r;
            c = (c%91) + 65;
        }
        else if (c>96 && c<123){
            c = c + r;
            c = (c%123)+96;
        }
        
        [s appendFormat:@"%c",c];
    }
    return [NSString stringWithString:s];
}
- (IBAction)crypter:(id)sender
{
    [self.messageCrypt setText:[self codec:self.message.text withRotation:3]];
}
- (IBAction)decrypter:(id)sender
{
    [self.message setText:[self codec:self.messageCrypt.text withRotation:-3]];
}
- (IBAction)effacer:(id)sender
{
    [self.messageCrypt setText:@""];
    [self.message setText:@""];
}
@end
