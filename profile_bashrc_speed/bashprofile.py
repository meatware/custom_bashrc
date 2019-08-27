# https://www.rosipov.com/blog/profiling-slow-bashrc/
# http://stackoverflow.com/a/5015179/2578489
# To get log place at start:
# PS4='+ $(date "+%s.%N")\011 '
# exec 3>&2 2>/tmp/bashstart.$$.log
# set -x
#
# and place this at end of .bashrc
# set +x
# exec 2>&3 3>&-
#
# example usage:
# python bashprofile.py /tmp/bashstart.2831.log -n 20

import argparse
import heapq

parser = argparse.ArgumentParser(description='Analyze bashstart log for speed.')
parser.add_argument('filename', help='often /tmp/bashstart.<PID>.log')
parser.add_argument('-n', default=20, help='number of results to show')
args = parser.parse_args()
filename, n = args.filename, int(args.n)

with open(filename, 'r') as f:
    q = []
    prev_time = None
    for line in f.readlines():
        line = line.split()
        if '+' not in line[0] or len(line) < 3:
            continue
        text = ' '.join(line[2:])
        seconds, nanoseconds = line[1].split('.')
        time = int(nanoseconds)
        diff = time - prev_time if prev_time is not None else 0
        prev_time = time
        heapq.heappush(q, (diff, text))

for diff, text in heapq.nlargest(n, q):
    print float(diff) / 1000000000, 's:', text
