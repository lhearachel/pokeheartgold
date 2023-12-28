#include "global.h"
#include "systask_environment.h"
#include "sys_task.h"

SysTask *CreateSysTaskAndEnvironment(SysTaskFunc function, u32 environmentSize, u32 priority, HeapID heapId) {
    void *environment;

    if (environmentSize != 0) {
        environment = AllocFromHeap(heapId, environmentSize);
        if (environment == NULL) {
            return NULL;
        }
        memset(environment, 0, environmentSize);
    } else {
        environment = NULL;
    }

    return CreateSysTask(function, environment, priority);
}

void DestroySysTaskAndEnvironment(SysTask *task) {
    void *environment = SysTask_GetData(task);
    if (environment != NULL) {
        FreeToHeap(environment);
    }

    DestroySysTask(task);
}
