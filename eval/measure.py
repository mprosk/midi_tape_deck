import argparse
import serial
import time


def get_freq(s: serial.Serial) -> float:
    """
    Gets the frequency reading from the SCPI device
    :param s: pyserial Serial object
    :return: cymometer reading in Hertz
    """
    s.write('CYMT?\n'.encode('utf-8'))
    freq = s.readline().decode('utf-8').strip().split(' ')[1]
    i = freq.index('H')
    if freq[i-1].isalpha():
        return float(freq[:i-1]) * 1000
    else:
        return float(freq[:i])


def main(args):
    ser = serial.Serial(args.port, args.baud)
    total = 0
    for i in range(args.samples):
        total += get_freq(ser)
        if i < (args.samples - 1):
            time.sleep(args.delay)
    print(total / args.samples)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Utility for taking averaged cymometer readings from a SCPI-compliant device')
    parser.add_argument('port', help='serial port of the SCPI device')
    parser.add_argument('-b', '--baud', help='baud rate', default=9600, type=int)
    parser.add_argument('-d', '--delay', help='time in seconds between samples', default=0, type=float)
    parser.add_argument('-s', '--samples', help='number of samples to take', default=1, type=int)
    args = parser.parse_args()
    main(args)
