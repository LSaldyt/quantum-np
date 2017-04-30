#!/usr/bin/env python3
import subprocess, sys, os

def runc(command, filename=None, checkOut=False):
    if filename is None:
        assert '@' not in command
        filename = ''
    command = command.replace('@', filename)
    #print(command + ':')
    if checkOut:
        output = subprocess.check_output(command, shell=True)
        return output.decode('unicode_escape')
    else:
        return subprocess.call(command, shell=True)

def to_int(bitArray):
    size = len(bitArray)
    n = 0
    for i, b in enumerate(bitArray):
        n += 2**(size-i-1) * b 
    return n

def get_named_bits(output):
    named_bits = []
    begin = False
    for line in output.split('\n'):
        if '-----' in line:
            begin = True
        elif begin:
            terms = line.split()
            if len(terms) == 3:
                named_bits.append((terms[0], int(terms[2] == 'True')))
    return named_bits

def interpret_output(output):
    toReturn = []

    namedBits = get_named_bits(output)
    arrayName = None
    array     = []
    for name, bit in namedBits:
        if name.endswith('[0]'):
            if arrayName is not None:
                toReturn.append((arrayName, to_int(array)))
                print('%s : %s' % toReturn[-1])
                array = []
            arrayName = name[:-3]
            array.append(bit)
        elif name.endswith(']'):
            array.append(bit)
        else:
            arrayName = None
            array = []
            toReturn.append((name, bit))
            print('%s : %s' % (name, bit))
    return toReturn

def to_output(filename):
    runc('verilator --lint-only -Wall @.v', filename)
    runc('yosys -q @.v scripts/synth.ys -b edif -o @.edif', filename)
    runc('edif2qmasm @.edif > @.qmasm', filename)
    # Requires verilog modulename matches filename, bool output is named 'valid'
    runc('qmasm @.qmasm --format=qbsolv --pin="@.valid := true" -o @.qubo', filename)
    output = runc('qmasm-qbsolv -i @.qubo', filename, checkOut=True)
    return output

def run(args):
    for filename in args:
        filename = os.path.splitext(filename)[0]
        try:
            output = to_output(filename)
            print(output)
            result = interpret_output(output)
        finally:
            runc('rm *.qmasm *.qubo *.edif')
    return result 

if __name__ == '__main__':
    run(sys.argv[1:])