//
//  ZZCommon.h
//  ZZTool
//
//  Created by lixiangzhou on 2017/3/6.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

#ifndef ZZCommon
#define ZZCommon


#ifdef DEBUG
#define ZZLog(fmt, ...) NSLog((@"[Line %d] %s " fmt), __LINE__,__FUNCTION__,  ##__VA_ARGS__);
#define ZZLogWarning(fmt, ...) NSLog((@"⚠️⚠️⚠️ [Line %d] %s " fmt), __LINE__, __FUNCTION__,  ##__VA_ARGS__);
#define ZZLogError(fmt, ...) NSLog((@"🔴🔴🔴[Line %d] %s " fmt), __LINE__, __FUNCTION__, ##__VA_ARGS__);
#else
#define ZZLog(...)
#define ZZLogWarning(...)
#define ZZLogError(...)
#endif



#endif
