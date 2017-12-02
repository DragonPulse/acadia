#!/usr/bin/env python3

def kmp(s, p):
    lp = pattern_index(p)

    k = 0
    for si, sc in enumerate(s):
        if sc == p[k]:
            k = k + 1
        else:
            k = lp[k]
        if k == len(p):
            return si - k + 1

    return -1


def pattern_index(p):
    if not p:
        return []

    indexes = [0]
    k = 0
    for i in range(1, len(p)):
        c = p[i]
        while k > 0 and p[k] != c:
            k = indexes[k - 1]

        if p[k] == c:
            k = k + 1

        indexes.append(k)
    return indexes

if __name__ == "__main__":
    print(kmp("BAAAB", "AAAA"))