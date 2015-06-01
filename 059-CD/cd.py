import sys

def bigger(a, b):
	if a > b:
		return a
	else:
		return b

def knapsack(A, w):
	l = len(A)
	r = []

	for i in range(l+1):
		r.append([])
		for j in range(w+1):
			r[i].append(0)

	for i in range(1, l+1):
		wt = A[i-1]

		for j in range(1, w+1):
			if wt > j:
				r[i][j] = r[i-1][j]
			else:
				r[i][j] = bigger(r[i-1][j], r[i-1][j - wt] + wt)

	# print r
	return r[l][w]

t = sys.stdin.read().split()

N = int(t[0])
n = int(t[1])

s = []

for i in range(2, len(t)):
	s.append(int(t[i]))
	
print knapsack(s, N)

