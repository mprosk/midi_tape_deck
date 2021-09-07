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
    fig = plt.figure()
    ax = plt.axes(projection='3d')
    ax.plot_trisurf(x, y, z)
    plt.show()
