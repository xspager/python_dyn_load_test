from ctypes import cdll, c_longlong

lib = cdll.LoadLibrary('./awesome.so')

lib.Add.argtypes = [c_longlong, c_longlong]

a, b = 10, 30

print('{} + {} = {}'.format(
	a, b, lib.Add(a,b)
))
