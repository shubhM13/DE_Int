
/*
array = {​ 3, 1, 4, 2, 2, 1}​ = 13
{​3, 1, 4}​ {​2, 2, 1}​
8 - 5 = 3
{​3, 4}​ {​1, 2, 2, 1}​
7-6 = 1


3, 1, 4, 2, 2, 1
{3} -> {3, 1}, {3} -> {3, 1, 4}, {3, 1}, {3}, {3, 4)
{}
ts = 13
s = 0
*/
{n} = 2**n

ts = 13
cs = 7
other set = 13 - 7 = 6
|7 - 6 | = 1

-------------------------------------------------------
*/


def subsetMin(arr):
    n = len(arr)
    ts = 0

    for i in range(n):
        ts += a[i]

    return(arr, 0, 0, ts)


def recurse(arr, i, cs, ts):

    n = len(arr)
    if(i == n-1):
        return abs((ts - cs), cs)

    return min(recurse(arr, i+1, cs+arr[i], ts), recurse(arr, i+1, cs, ts))
