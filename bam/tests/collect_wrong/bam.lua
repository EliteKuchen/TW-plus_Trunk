settings = NewSettings() 
 
src = Collect("test/*.cpp") -- this path does not exist
objs = Compile(settings, src) 
exe = Link(settings, "gc_app", objs) 
