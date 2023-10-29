import requests


def fetch():
    resp = requests.get("https://example.com")
    print(resp)


if __name__ == "__main__":
    fetch()
