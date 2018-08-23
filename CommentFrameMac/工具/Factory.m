//
//  Factory.m
//  CommentFrameMac
//
//  Created by 王帅 on 2018/8/14.
//  Copyright © 2018年 王帅. All rights reserved.
//

#import "Factory.h"

@implementation Factory

+(NSString*)getHardwareUUID{//获取UUID
    NSString *ret = nil;
    io_service_t platformExpert ;
    platformExpert = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("IOPlatformExpertDevice")) ;
    if (platformExpert) {
        CFTypeRef serialNumberAsCFString ;
        serialNumberAsCFString = IORegistryEntryCreateCFProperty(platformExpert, CFSTR("IOPlatformUUID"), kCFAllocatorDefault, 0) ;
        if (serialNumberAsCFString) {
            ret = (NSString*)CFBridgingRelease(serialNumberAsCFString);
        }
        IOObjectRelease(platformExpert);
    }
    return ret;
}
@end
