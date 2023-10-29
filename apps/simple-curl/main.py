import sys

import requests


def fetch(url: str) -> None:
    resp = requests.get(url)
    print(resp)


if __name__ == "__main__":
    fetch(sys.argv[1])
