import sys
import subprocess
if sys.argv[1] =='-h':
    print('\nShodanza-dl: Automated download and file conversion tool for Shodan network datasets\n\nSyntax: python shodanza-dl.py <shodan-dataset-query> <filename>')
    print('\nCreated by Gabriel H. @weekndr_sec\nhttp://weekndr.me | https://github.com/ndr-repo\n')
    quit()
subprocess.run(['shodan', 'download', '--limit', '-1', str(sys.argv[2])+str('-shodanza-dl'), str(sys.argv[1])])
subprocess.run(['shodan', 'convert', str(sys.argv[2])+str('-shodanza-dl')+str('.json.gz'), 'csv'])
subprocess.run(['shodan', 'convert', str(sys.argv[2])+str('-shodanza-dl')+str('.json.gz'), 'xlsx'])
print('Download process completed!\n')
