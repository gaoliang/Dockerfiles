[csvkit](https://csvkit.readthedocs.io) is a suite of command-line tools for converting to and working with CSV, the king of tabular file formats.

## Usage
```
docker run  -it --rm -v $(pwd):/csv csvkit <csvkit commands>
```

For example, if you need convert a Excel to a CSV, you can run

```
docker run  -it --rm -v $(pwd):/csv csvkit in2csv ne_1033_data.xlsx 
```

[see more csvkit commands](https://csvkit.readthedocs.io)

## Optional usage 1

```
alias csvkit="docker run  -it --rm -v $(pwd):/csv csvkit"
```
