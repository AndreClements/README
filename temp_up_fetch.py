import urllib.request

urls = [
    'https://www.up.ac.za/faculty-of-humanities/departments',
    'https://www.up.ac.za/faculty-of-humanities/departments/fine-arts',
    'https://www.up.ac.za/faculty-of-humanities/about-us',
    'https://www.up.ac.za/faculty-of-humanities/head-of-faculty',
    'https://www.up.ac.za/fine-arts',
]
headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'}

for u in urls:
    print('---', u)
    req = urllib.request.Request(u, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=20) as r:
            content = r.read().decode('utf-8', errors='ignore')
            found = [line for line in content.splitlines() if any(tok.lower() in line.lower() for tok in ['fine art','fine arts','head of','head ', 'chair','dean','professor','prof.','dr.','director','school of arts','department of arts'])]
            for line in found[:50]:
                print(line.strip())
    except Exception as e:
        print('ERR', e)
