Window={}
Window.mt={}
Window.prototype={x=10,y=20,width=100,height=200}
Window.mt.__index=function(table,key)
	return Window.prototype[key]
end
Window.mt.__newindex=function(table,key,value)
	print("set "..key..":"..value)
	rawset(table,key,value)
end

Window.new=function(t)
	setmetatable(t, Window.mt)
		return t
	end

w=Window.new{x=1,y=2}
print(w.x)
print(w.width)
w.newkey=900
print(w.newkey)


