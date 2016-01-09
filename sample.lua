#print("hello,world")
Set={}
function Set.new(t)
	local set={}
	for k,v in ipairs(t) do
		set[v]=true
	end
	Set.mt={}
	Set.mt.__add=Set.union
	setmetatable(set, Set.mt)
	return set
end

function Set.union(a,b)
	local set=Set.new{}
	for k in pairs(a) do
		set[k]=true
	end
	for k in pairs(b) do
		set[k]=true
	end
	return set
end

function Set.print(t)
	for k in pairs(t) do
		print(k)
	end
end


a=Set.new{1,2,3,4,5,6}
b=Set.new{5,6,7,8,9}
c=a+b
Set.print(c)
print "hello,world"
