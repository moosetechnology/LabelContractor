I'm an abstract strategy and my subclasses can define the way to reduce a label(or generally a string).

If the string represents a fully qualified name, by default I will remove the 'path' part before applying any strategy(if you want to keep it, you can use #keepPath method) .

Whatever the strategy, the common method used to reduce a label(or generally a string) is **#reduce:**