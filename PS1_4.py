def Least_moves(n):
	if n==1:
		return 0
# 当目标数字为1时
	elif n%2!=0:
		return 1 + Least_moves(n-1)
# 当目标数字不能被2整除那么就使其减1再进行判断
	else:
		return 1 + min(Least_moves(n-1), Least_moves(int(n/2)))
# 一旦目标数字大于1切能被2整除,优先考虑翻倍的路径
print(Least_moves(100))
