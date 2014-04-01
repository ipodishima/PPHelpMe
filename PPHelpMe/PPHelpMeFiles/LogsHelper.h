//
//  Logs.h
//  PPWordPress
//
//  Created by Marian Paul on 06/04/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#ifndef PPWordPress_Logs_h
#define PPWordPress_Logs_h


#define SHOW_LOG_TRACE 1
#define SHOW_LOG_DATA 0
#define SHOW_UI_DEBUG 0

#if DEBUG
#define TESTING 1
#else
#define TESTING 0
#endif

#ifndef PPLog
#if DEBUG
# define PPLog(fmt, ...) NSLog((@"%s [Line %d] " fmt),__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define PPLog(fmt, ...)
#endif
#endif

#ifndef PPTraceLog
#if SHOW_LOG_TRACE
# define PPTraceLog(fmt, ...) PPLog(fmt, ##__VA_ARGS__)
#else
#define PPTraceLog(fmt, ...)
#endif
#endif

#ifndef PPDataLog
#if SHOW_LOG_DATA
# define PPDataLog(fmt, ...) PPLog(fmt, ##__VA_ARGS__)
#else
#define PPDataLog(fmt, ...)
#endif
#endif

#ifndef PPAssert
#if DEBUG
# define PPAssert(condition, desc, ...) NSAssert(condition, desc, ##__VA_ARGS__)
#else
#define PPAssert(condition, desc, ...) PPLog((@"Assert : %s [Line %d] " desc),__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#endif
#endif



#endif
