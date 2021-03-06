### 事件循环

- 简介

1. Node.js 是单进程单线程应用程序，但是通过事件和回调支持并发，所以性能非常高。

1. Node.js 的每一个 API 都是异步的，并作为一个独立线程运行，使用异步函数调用，并处理并发。

1. Node.js 基本上所有的事件机制都是用设计模式中观察者模式实现。

1. Node.js 单线程类似进入一个while(true)的事件循环，直到没有事件观察者退出，每个异步事件都生成一个事件观察者，如果有事件发生就调用该回调函数.


- 参考

    [Node.js 事件循环 | 菜鸟教程](http://www.runoob.com/nodejs/nodejs-event-loop.html)

    [Node.js EventEmitter | 菜鸟教程](http://www.runoob.com/nodejs/nodejs-event.html)
