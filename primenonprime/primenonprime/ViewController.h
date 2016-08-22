//
//  ViewController.h
//  primenonprime
//
//  Created by sunil on 08/08/16.
//  Copyright (c) 2016 sunil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate,UIActionSheetDelegate,UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
{
    IBOutlet UITextField *txt1;
    IBOutlet UITextField *txt2;
    
    NSMutableArray *arry;
    
    int startno;
    int endno;
    
    NSString *count1;
}

@property IBOutlet UITableView *tbl;

-(IBAction)ok:(id)sender;

//-(BOOL)checkuserinput:(NSString *)str1 sec:(NSString *)str2;


@end
