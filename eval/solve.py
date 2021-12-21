import math


def freq(x, y):
    """5k coarse, 5k fine parallel with 1.5k"""
    return 0.6351428 + (0.0048308 * x) + (-0.0001811 + 9e-07 * x + 1.2e-06 * y) * y


def coarse(z):
    """Coarse pot setting that gets just above the target freq with fine=255"""
    return min(max(math.ceil(197.617 * z - 131.809), 0), 255)

################################################################################


def solve(z):

    # 1. Calculate the coarse value (fine=255) that puts us just above the target
    x = coarse(z)
    print("x =", x)
    print('f({}) ='.format(x), freq(x, 255))
    print('f({}) ='.format(x - 1), freq(x - 1, 255))

    # 2. Binary search for the y value
    ymin = 0
    ymax = 255
    y = 127
    for i in range(8):
        y = (ymax + ymin) // 2
        f = freq(x, y)
        print('Step {}, y = {} ({}, {}), f = {}'.format(i, y, ymin, ymax, f))
        if z < f:
            ymax = y
        elif z > f:
            ymin = y
        else:
            break
    print('y =', y)
    return x, y


if __name__ == '__main__':
    for z in [1, 0.75, 1.115, 1.8, 0.5, 2]:
        print()
        print('-' * 30)
        print("Solving for Z =", z)
        x, y = solve(z)
        f = freq(x, y)
        err = 'N/A'
        try:
            err = abs((f - z) / z)
        except ZeroDivisionError:
            pass
        print('X = {}, Y = {}, Z = {}, f = {}, error = {}'.format(x, y, z, f, err))
