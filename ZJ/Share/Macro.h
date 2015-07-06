//
//  Macro.h
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#ifndef EasyPark_Macro_h
#define EasyPark_Macro_h

#define DebugLogEnable 1

#if DebugLogEnable

#define DebugString(format,...)      ([NSString stringWithFormat: @" %s  %@ ", __FUNCTION__, [NSString stringWithFormat:format, ##__VA_ARGS__]])

#define xsyLog(format, ...)          NSLog(@"%@",DebugString(format, ##__VA_ARGS__))

#define xsyLogError(error)           xsyLog(@"error:%@",error)

#define xsyLogMethod()               xsyLog(@"")

#else

#define DebugString(format,...)      @""

#define xsyLog(format, ...)

#define xsyLogError(error)

#define xsyLogMethod()

#define NSLog(...)

#endif

#endif
