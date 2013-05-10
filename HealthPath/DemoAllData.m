//
//  DemoAllData.m
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen/Enhao Gong. All rights reserved.
//

#import "DemoAllData.h"

@implementation DemoAllData

- (id)init {
    self = [super init];
    if (self) {
        
        _data = [NSMutableDictionary new];
        
        _dataKeys = [NSArray arrayWithObjects:
                     eat,
                     move,
                     sleep,
                     nil];
        
        _times = [NSArray arrayWithObjects:
                                        @"2013-05-5",
                                        @"2013-05-6",
                                        @"2013-05-7",
                                        @"2013-05-8",
                                        @"2013-05-9",
                                        @"2013-05-10",
                                        @"2013-05-11",
                  nil];
        
        
        int i = 0;
        float data_eat,data_move,data_sleep;
        
        for (i=0; i<[_times count]; i++)
        {
            switch (i) {
                case 0:
                    data_eat=10.0f;data_move=11.0f;data_sleep=7.0f;break;
                case 1:
                    data_eat=7.0f;data_move=12.2f;data_sleep=6.0f;break;
                case 2:
                    data_eat=6.0f;data_move=12.1f;data_sleep=6.5f;break;
                case 3:
                    data_eat=7.0f;data_move=12.0f;data_sleep=7.5f;break;
                case 4:
                    data_eat=8.0f;data_move=11.0f;data_sleep=7.0f;break;
                case 5:
                    data_eat=10.0f;data_move=13.0f;data_sleep=6.0f;break;
                case 6:
                    data_eat=5.0f;data_move=14.0f;data_sleep=5.0f;break;
                case 7:
                    data_eat=5;data_move=0;data_sleep=0;break;
                case 8:
                    data_eat=0;data_move=2;data_sleep=0;break;
                case 9:
                    data_eat=5;data_move=0;data_sleep=0;break;
                case 10:
                    data_eat=0;data_move=0;data_sleep=0;break;
                case 11:
                    data_eat=1;data_move=0;data_sleep=0;break;
                default:
                    break;
            }
            NSArray *tempData = [NSArray arrayWithObjects:[NSNumber numberWithFloat:data_eat],
                                 [NSNumber numberWithFloat:data_move],
                                 [NSNumber numberWithFloat:data_sleep],
                                 nil];
            [_data setObject:[NSDictionary dictionaryWithObjects:tempData forKeys:_dataKeys]  forKey:[_times objectAtIndex:i]];
        }
        
    }
    return self;
}

@end

