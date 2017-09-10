import os
import time

def remove_unwanted_files():
    # .json = json files
    # (1) = duplicates
    # Screenshot = screenshots
    time.sleep(1)
    print ''
    unwanted = ['.json', '.html', '(1)', 'Screenshot']
    for item in unwanted:
        print 'Removing {} files...'.format(item)
        for dirname, dirnames, filenames in os.walk('.'):
            for f in filenames:
                if item in f:
                    file_to_rm = os.path.join(dirname, f)
                    print 'Removing: {}'.format(file_to_rm)
                    os.remove(file_to_rm)

def remove_empty_directories():
    print ''
    print 'Removing empty directories...'
    for dirname, dirnames, filenames in os.walk('.'):
        if not filenames and not dirnames:
            print 'Directory {} is empty. Removing...'.format(dirname)
            os.rmdir(dirname)

def main():
    remove_unwanted_files()
    remove_empty_directories()

if __name__ == '__main__':
    main()
