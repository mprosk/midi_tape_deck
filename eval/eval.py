import numpy as np
import scipy.linalg
# from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt


def read_csv(filename='freq.csv'):
    c = []
    f = []
    q = []
    with open(filename) as csv:
        for line in csv:
            tokens = line.strip().split(',')
            c.append(float(tokens[0]))
            f.append(float(tokens[1]))
            q.append(float(tokens[2]))
    return c, f, q


if __name__ == '__main__':
    x, y, z = read_csv()
    data = np.c_[x, y, z]
    mn = np.min(data, axis=0)
    mx = np.max(data, axis=0)
    X, Y = np.meshgrid(np.linspace(mn[0], mx[0], 16), np.linspace(mn[1], mx[1], 16))
    XX = X.flatten()
    YY = Y.flatten()

    # best-fit quadratic curve (2nd-order)
    A = np.c_[np.ones(data.shape[0]), data[:, :2], np.prod(data[:, :2], axis=1), data[:, :2] ** 2]
    C, _, _, _ = scipy.linalg.lstsq(A, data[:, 2])

    C[4] = 0

    # generate the equation
    print('Z = {} + ({})*X + ({})*Y + ({})*X*Y + ({})*X**2 + ({})*Y**2'.format(C[0], C[1], C[2], C[3], C[4], C[5]))

    # evaluate it on a grid
    Z = np.dot(np.c_[np.ones(XX.shape), XX, YY, XX * YY, XX ** 2, YY ** 2], C).reshape(X.shape)

    fig = plt.figure(figsize=(10, 10))
    ax = fig.gca(projection='3d')
    ax.plot_surface(X, Y, Z, rstride=1, cstride=1, alpha=0.2)
    ax.scatter(data[:, 0], data[:, 1], data[:, 2], c='r', s=50)
    plt.xlabel('X')
    plt.ylabel('Y')
    ax.set_zlabel('Z')
    # ax.axis('equal')
    ax.axis('tight')
    plt.show()
