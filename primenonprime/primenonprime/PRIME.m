//
//  PRIME.m
//  primenonprime
//
//  Created by sunil on 08/08/16.
//  Copyright (c) 2016 sunil. All rights reserved.
//

#import "PRIME.h"

@implementation PRIME


-(void)setnumbers1:(int)start1 sec:(int)end1
{
    
    start=start1;
    end=end1;
    
}



-(NSMutableArray *)primecal
{
    NSMutableArray *primearray=[[NSMutableArray alloc]init];
    for(i=start;i<=end;i++)
    {
        for(p=2;p<=i;)
        {
            remain=i%p;
            if(remain==0)
            {
                break;
            }
            p++;
        }
        
        if(p==i)
        {
          [primearray addObject:[NSString stringWithFormat:@"%d",i]];
            count++;
        }
    }
    
return  primearray;
}

- (void)primeCallWithCallBack:(void(^)(NSMutableArray* primeNumbers))finish
{
    NSMutableArray *primearray=[[NSMutableArray alloc]init];
    for(i=start;i<=end;i++)
    {
        for(p=2;p<=i;)
        {
            remain=i%p;
            if(remain==0)
            {
                break;
            }
            p++;
        }
        
        if(p==i)
        {
            [primearray addObject:[NSString stringWithFormat:@"%d",i]];
            count++;
        }
    }
    
    if(finish != nil)
    {
        finish(primearray);
    }
}

@end

