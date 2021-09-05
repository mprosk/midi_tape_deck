
def freq_full(x, y):
    return -1917.6297513694317 + 16.98125248102388 * x + 0.08482089338894398 * y + 0.026416174905564915 * x * y + 0.0 * x ** 2 + 0.007379870737151961 * y ** 2


def freq(x, y):
    return -1917.6297514 + (16.9812525 * x) + (0.0848209 + 0.0264162 * x + 0.0073799 * y) * y

def freq_128(x):
    return 20.3625 * x - 1785.86


def dump():
    with open('dump.csv', mode='w') as fp:
        for x in range(256):
            for y in range(256):
                fp.write('{},{},{}\n'.format(x, y, round(f(x, y), 0)))


def dump_2d():
    with open('dump_2d.csv', mode='w') as fp:
        header = [str(n) for n in range(256)]
        fp.write(',' + ','.join(header) + '\n')
        for x in range(256):
            fp.write('{}'.format(x))
            for y in range(256):
                fp.write(',{}'.format(round(f(x, y), 3)))
            fp.write('\n')


def is_close(val, target, tol=0.2):
    lo = (1 - tol) * target
    hi = (1 + tol) * target
    return (lo <= val) and (val <= hi)


def solve(z):
    x_min = 0
    x_max = 256
    y_min = 0
    y_max = 256

    y = (y_max + y_min) // 2

    n = 0

    # get x close
    while True:
        x = (x_max + x_min) // 2
        f = freq_128(x)
        print('Step {}, x = {} ({}, {}), f = {}'.format(n, x, x_min, x_max, f))
        n += 1
        if is_close(f, z, .01):
            break
        elif z < f:
            x_max = x
        elif z > f:
            x_min = x

        if x_max - x_min < 2:
            break
    print('X =', x)

    # get y closer
    while True:
        y = (y_max + y_min) // 2
        f = freq(x, y)
        print('Step {}, y = {} ({}, {}), f = {}'.format(n, y, y_min, y_max, f))
        n += 1
        if is_close(f, z, .001):
            break
        elif z < f:
            y_max = y
        elif z > f:
            y_min = y

        if y_max - y_min < 2:
            break
    print('Y =', y)

    return x, y


if __name__ == '__main__':
    for z in [1950, -440, 3000, -840, -1000, 420, 0]:
        print()
        print('-' * 30)
        print("Solving for Z =", z)
        x, y = solve(z)
        f = freq(x, y)
        err = (f / z)
        print('X = {}, Y = {}, Z = {}, f = {}, error = {}'.format(x, y, z, f, err))
