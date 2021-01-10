//
//  Speaker.m
//  JanstiLib
//
//  Created by JustinLau on 2021/1/10.
//

#import "Speaker.h"
#import <AFNetworking/AFHTTPSessionManager.h>

@implementation Speaker

- (void)saySth {
    NSLog(@"Say sth");
}

- (void)changeMainVersion {
    NSLog(@"current Version is 1.0.0");
}

- (void)getWeather {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"https://www.baidu.com/" parameters:nil headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success %@", responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"Failed %@", error);
        }];
}

@end
