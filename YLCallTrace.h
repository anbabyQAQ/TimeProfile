//
//  YLCallTrace.h
//  YYStubHook
//
//  Created by tianyulong 2022/04/27.
//

#ifndef YLCallTrace_h
#define YLCallTrace_h

#include <stdio.h>
#include <objc/objc.h>


typedef struct {
    Class cls;
    SEL sel;
    uint64_t costTime; //单位：纳秒（百万分之一秒）
    int depth;
} YLCallRecord;

typedef struct {
    YLCallRecord *record;
    int allocLength;
    int index;
} YSMainThreadCallRecord;



void startTrace(void);
void stopTrace(void);
YSMainThreadCallRecord *getMainThreadCallRecord(void);
void setMaxDepth(int depth);
void setCostMinTime(uint64_t time);


#endif /* YLCallTrace_h */
