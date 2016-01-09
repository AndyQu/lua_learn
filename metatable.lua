People={age=18}

function People:new()
	local p={}
	setmetatable(p,self)
	self.__index=self
	return p
end

function People:growup( )
	print(self)
	print("\t.growup")
	self.age=self.age+1
	print(self)
	print("\t.age:"..self.age)
end
--[[
思考：为什么p1/p2拥有各自私有的age？
因为，当设置一个p1(p2)的age时，
	1. p1自己没有age这个变量
	2. 它的metatable没有__newindex方法
所以，此时lua会为p1加入一个新的变量age，就如普通的x.age=18设置新field一样。这个age与People的age是不同的。
	
]]
p1=People:new()
p1:growup()

p2=People:new()
p2:growup()
print(People.age)

x={}
x.age=18
print(x.age)