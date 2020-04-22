#!/Users/anthonyquivers/anaconda3/bin/python
#Date Started: 200421

def cookSort(R, S):
    return (R - 1) * (S - 1)

if __name__ == '__main__':

    N = int(input())
   

    for n in range(N):
        R, S = map(int, input().split(' '))
        print("Case #{}: {}".format(n + 1, cookSort(R, S)))

