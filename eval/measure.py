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


def set_pots(s: serial.Serial, coarse: int, fine: int):
    """
    Sets the Arduino controlled digital potentiometers
    :param s: pyserial Serial object
    :param coarse: value to set the coarse potentiometer
    :param fine: value to set the fine potentiometer
    :return: the current potentiometer setting readback
    """
    s.write('c{}\nf{}\n'.format(coarse, fine).encode('utf-8'))
    s.flush()


def main(args):
    print(args)
    scpi = serial.Serial(args.scpi_port, args.scpi_baud, timeout=1)
    ard = serial.Serial(args.ard_port, args.ard_baud, timeout=1)
    time.sleep(1)
    ard.setDTR(0)
    time.sleep(1)

    # Clear output file
    with open('output.csv', mode='w') as fp:
        fp.write('')

    # Perform sampling
    for coarse in range(0, 257, args.coarse_step):
        coarse = max(0, coarse - 1)
        for fine in range(0, 257, args.fine_step):
            fine = max(0, fine - 1)

            # Set pots
            print('Setting pots to ({}, {})'.format(coarse, fine))
            set_pots(ard, coarse, fine)
            input('Ready to sample. Press ENTER to begin capture...')

            # Take samples
            total = 0
            for i in range(args.samples):
                print('Collecting sample {} of {}...'.format(i + 1, args.samples))
                total += get_freq(scpi)
                if i < (args.samples - 1):
                    time.sleep(args.delay)
            result = (total / args.samples) / args.freq

            # Write to output file
            with open('output.csv', mode='a') as csv:
                csv.write('{},{},{}\n'.format(coarse, fine, result))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Utility for performing semi-automated characterization of the digipot system')
    parser.add_argument('scpi_port', help='serial port of the SCPI device')
    parser.add_argument('ard_port', help='serial port of the Arduino')
    parser.add_argument('freq', help='nominal test frequency', default=3000, type=float)
    parser.add_argument('--scpi-baud', help='baud rate of the SCPI device', default=9600, type=int)
    parser.add_argument('--ard-baud', help='baud rate of the Arduino', default=115200, type=int)
    parser.add_argument('-d', '--delay', help='time in seconds between samples', default=0, type=float)
    parser.add_argument('-s', '--samples', help='number of samples to take', default=1, type=int)
    parser.add_argument('--coarse-step', help='step size for the coarse potentiometer', default=64, type=int)
    parser.add_argument('--fine-step', help='step size for the fine potentiometer', default=64, type=int)
    args = parser.parse_args()
    main(args)
