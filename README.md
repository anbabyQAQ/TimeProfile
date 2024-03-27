# TimeProfile
Time Profile原理 

利用fishhook OC的 objc_msgSend()方法
并在 _hook_objc_msgSend方法执行前后添加 hook_objc_msgSend_after & hook_objc_msgSend_after 方法 用于记录此方法或者子方法的执行耗时，子方法耗时的深度可以自由定制

如果记录CPU使用情况，可以记录每个方法执行时间。然后根据调用堆栈把每个方法执行的时间累加起来，来反映CPU使用情况。Time Profile并没有事无巨细的记录每个方法的执行时间，而是使用了定时采样方式来反应CPU使用情况。


## 想要检测任何一个方法耗时，可以打开UIWindow+CallRecordShake.m注释，并且在需要兼容的方法前后调用startTrace() 和 stopTrace() ，摇一摇即可
