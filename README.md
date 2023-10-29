# Independent scripts

## Setup

```shell
# create a venv first
pip install pex
```

## Building pex to ship dependencies

```shell
make app-env
```

It creates `app-env.pex` file, which works like a Python executable but uses the interpreter available in the system while all dependencies in `requirements.txt` are included inside.

## Uploading to customer sites

Copy the following files:
- `app-env.pex`
- `scripts/xxx.py`

## Executing the scripts

Assuming that the current shell has a working, compatible Python interpreter (usually the version installed by us, an indygreg build):
```shell
chmod +x app-env.px
./app-env.pex scripts/xxx.py
```


# Independent executable (TODO)

* TODO: Embed the console scripts in PEX and make it the default
* TODO: Integrate with scie to auto-install required Python version
