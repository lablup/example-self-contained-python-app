## Setup

```shell
# create a venv first
pip install pex
```

# Independent scripts

## Building pex to ship dependencies

```shell
make script-env
```

It creates `script-env.pex` file, which works like a Python executable but uses the interpreter available in the system while all dependencies in `requirements.txt` are included inside.

## Uploading to customer sites

Copy the following files:
- `dist/script-env.pex`
- `scripts/xxx.py`

## Executing the scripts

Assuming that the current shell has a working, compatible Python interpreter (usually the version installed by us, an indygreg build):
```shell
chmod +x dist/script-env.px
./dist/script-env.pex scripts/xxx.py
```


# Independent executable

First, download the appropriate `science` binary from [the scie-lift release page](https://github.com/a-scie/lift/releases/tag/v0.3.0),
and make it available via your PATH.

Then run:
```shell
make simple-curl-app
```

## Executing the executable

It will automatically download and install the statically built Python and start:

```shell
./dist/simple-curl https://example.com
```

## Reference

* https://github.com/a-scie/jump/blob/main/docs/packaging.md
