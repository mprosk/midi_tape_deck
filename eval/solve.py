
# Full decimal accuracy

def freq_full(x, y):
    return -1917.6297513694317 + 16.98125248102388 * x + 0.08482089338894398 * y + 0.026416174905564915 * x * y + 0.007379870737151961 * y ** 2

def freq_full_5k(x, y):
    return -1503.0871470775444 + (12.076708904712229 * x) + (0.9015390804265535 + 0.011523262414507407 * x + 0.0032597268956831016 * y) * y


# 7 digit floats

def freq(x, y):
    return -1917.6297514 + (16.9812525 * x) + (0.0848209 + 0.0264162 * x + 0.0073799 * y) * y


def freq_5k(x, y):
    return -1503.0871471 + (12.0767089 * x) + (0.9015391 + 0.0115233 * x + 0.0032597 * y) * y

# Fine fixed at 127

def freq_127(x):
    return 20.3361 * x - 1787.83

def freq_127_5k(x):
    return 13.4281111 * x - 1272.9


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
    x_max = 255
    y_min = 0
    y_max = 255

    y = (y_max + y_min) // 2

    n = 0

    # get x close
    for _ in range(8):
        x = (x_max + x_min) // 2
        f = freq_127(x)
        print('Step {}, x = {} ({}, {}), f = {}'.format(n, x, x_min, x_max, f))
        n += 1
        if z < f:
            x_max = x
        elif z > f:
            x_min = x
    print('X =', x)

    # get y closer
    for _ in range(8):
        y = (y_max + y_min) // 2
        f = freq(x, y)
        print('Step {}, y = {} ({}, {}), f = {}'.format(n, y, y_min, y_max, f))
        n += 1
        if z < f:
            y_max = y
        elif z > f:
            y_min = y

    print('Y =', y)

    return x, y


if __name__ == '__main__':
    for z in [1950, -440, 3000, -840, -1000, 420, 0]:
        print()
        print('-' * 30)
        print("Solving for Z =", z)
        x, y = solve(z)
        f = freq(x, y)
        err = 'N/A'
        try:
            err = abs((f - z) / z)
        except:
            pass
        print('X = {}, Y = {}, Z = {}, f = {}, error = {}'.format(x, y, z, f, err))
