# Shodanza
Scripts for working with the Shodan API. Requires a Shodan API key.

### Installing prerequisites 
```
pip install shodan
shodan init -h
```

### Getting started with Shodanza

```
git clone https://github.com/ndr-repo/shodanza.git
python shodanza-dl.py -h
```

### shodanza-dl.py
- Automated download and file conversion tool (ETL - data extraction phase)
<img width="774" alt="shodanza-dl-py3-redacted" src="https://github.com/user-attachments/assets/ca0d6685-192c-4867-b350-3e7494d4afa3" />
<img width="961" alt="shodanza-dl-py1-redacted" src="https://github.com/user-attachments/assets/e959589c-f25a-43e6-a224-83e9a1676212" />
<img width="911" alt="shodanza-dl-py2-redacted" src="https://github.com/user-attachments/assets/d58772e5-9115-4679-968e-3b3fc04dbd36" />

### shodanza-parse-indicators.ps1
- Automated parsing of common indicators from an expanded JSON dataset.

### shodanza-parse-AssetByPort.ps1
- Creates asset lists by open port. Requires the parsed port number file from shodanza-parse-indicators.ps1.
