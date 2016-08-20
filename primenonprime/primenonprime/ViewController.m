//
//  ViewController.m
//  primenonprime
//
//  Created by sunil on 08/08/16.
//  Copyright (c) 2016 sunil. All rights reserved.
//

#import "ViewController.h"
#import "PRIME.h"
#import "NON-PRIME.h"
#import "ODD.h"
#import "EVEN.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


   arry=[[NSMutableArray alloc]init];
   

   
    
   
}


-(IBAction)ok:(id)sender
{
   // arry=[[NSMutableArray alloc]init];
    
    
    startno=[txt1.text intValue];
    
    endno=[txt2.text intValue];
    
   if(startno ==0 || endno ==0 || startno > endno)
    {
         UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"CHECK INPUT "message:@"input must not be nil,zero or alphabet & endno must be greater than startno" delegate:self cancelButtonTitle:@"CANCEL" otherButtonTitles:nil, nil];
        
        [alert show];
    }
    
    else
  
     {
        
        
      //if (startno !=0 || endno !=0 || !(startno > endno))
        {
          NSLog(@"1....start @%d, end @%d",startno,endno);
    
          UIActionSheet *action=[[UIActionSheet alloc]initWithTitle:@"select your choice" delegate:self cancelButtonTitle:@"cancel:" destructiveButtonTitle:nil otherButtonTitles:@"prime",@"non-prime",@"odd",@"even", nil];
      
           [action showInView:self.view];
       }
   }
   
      
}



- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if(buttonIndex==0)
    {
        
        NSLog(@"2...start @%d, end @%d",startno,endno);
        
       PRIME *prime=[[PRIME alloc]init];
        
          [prime setnumbers1:startno sec:endno];
        
        [arry addObjectsFromArray:[prime primecal]];
        
        
       
        for(int i=0;i<arry.count;i++)
        {
            NSLog(@"count : @%d",i);
                        
        }
         for(count1 in arry)
         {
        
            NSLog(@" arry %@ ",count1);

        }
     }
            
    
    if(buttonIndex==1)
    {
        NON_PRIME *nonprimeobj=[[NON_PRIME alloc]init];
    }
    if(buttonIndex==2)
    {
          ODD *oddobj=[[ODD alloc]init];
        
    }
    if(buttonIndex==3)
    {
        
        EVEN *evenobj=[[EVEN alloc]init];

    }
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}





- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //CHECK NSLOG (arry.count) NOT WORKING
    
    return arry.count; /// //not working????????? ***************

    [tableView reloadData];
    
    NSLog(@"arry.count @%d",arry.count);   //not working?????????
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell;
    
    
    if(cell==nil)
    {
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"A"];
        
        
        
    }
    cell.textLabel.text=[arry objectAtIndex:indexPath.row];
    
    
    
    return cell;
    
    [tableView reloadData];
}
















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
