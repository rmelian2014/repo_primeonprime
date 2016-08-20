//
//  PRIME.h
//  primenonprime
//
//  Created by sunil on 08/08/16.
//  Copyright (c) 2016 sunil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRIME : NSObject
{
    
    int i,start,end;
    int remain,k,p;
    int count;
    //int count=0;   //error????
    
}

@property(strong,nonatomic) NSMutableArray *primearray;

-(void)setnumbers1:(int)start1 sec:(int)end1;

-(NSMutableArray *)primecal;


@end