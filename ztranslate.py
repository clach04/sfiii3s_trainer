"""Python 2 and Python 3 script to send images to Ztranslate server
"""

import base64
import glob
import logging
import os
import platform
import sys

try:
    # Assume Python 3.x
    from urllib.request import Request, urlopen
    from urllib.error import URLError, HTTPError
except ImportError:
    # Assume Python 2.x
    from urllib2 import Request, urlopen
    from urllib2 import URLError, HTTPError


try:
    # raise ImportError()
    # Python 2.6+
    import json
except ImportError:
    # raise ImportError()
    import simplejson as json  # from http://code.google.com/p/simplejson


logging.basicConfig()  # NO debug, no info. But logs warnings
log = logging.getLogger("json_demo")


def post_json(url, dict_payload=None):
    headers = {'content-type': 'application/json'}  # optionally set headers
    data = json.dumps(dict_payload).encode('utf-8')
    log.info('url: %r' % url)
    log.info('json request: %r' % data)

    req = Request(url, data, headers)
    f = urlopen(req)
    response_str = f.read()  # read entire response, could use json.load()
    f.close()

    log.info('response_str: %r' % response_str)
    response = json.loads(response_str)
    return response



def main(argv=None):
    if argv is None:
        argv = sys.argv

    print(sys.version)
    print(platform.platform())

    # construct URL form documented in https://ztranslate.net/docs/service
    # https://ztranslate.net/service?target_lang=En&source_lang=Ja&mode=Fast&output=png,wav&api_key=< api key >
    api_key = os.environ['ZTRANSLATE_KEY']
    url = 'https://ztranslate.net/service?target_lang=En&source_lang=Ja&mode=Fast&output=png&api_key=' + api_key
    print(url)

    filename_pattern = os.path.join('resources', 'cheat', '*_text.png')
    image_dirname = os.path.dirname(filename_pattern)

    for filename in glob.glob(filename_pattern):
        print(filename)
        filename_new = os.path.join(image_dirname, 'jp_' + os.path.basename(filename))
        print(filename_new)

        f = open(filename, 'rb')
        image_bytes = f.read()
        f.close()
        image_b64 = base64.b64encode(image_bytes)
        #print(repr(image_b64))
        os.rename(filename, filename_new)

        payload = {
            "image": image_b64
        }
        result = post_json(url, payload)
        print(json.dumps(result, indent=4))
        image_bytes = base64.b64decode(result['image'])
        #filename_new = os.path.join(image_dirname, 'en_' + os.path.basename(filename))
        filename_new = os.path.join(image_dirname, 'en_' + os.path.basename(filename))
        print('opening %s' % filename_new)
        f = open(filename_new, 'wb')
        f.write(image_bytes)
        f.close()
        print('opening %s' % filename)
        f = open(filename, 'wb')
        f.write(image_bytes)
        f.close()


    return 0

if __name__ == "__main__":
    sys.exit(main())
