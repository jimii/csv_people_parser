## Synopsis

Person class with parsers for csv files

## Usage

#### list persons
    ./person-list.rb --options < file

#### list persons with unique name and last name
    ./person-list-uniqr.rb < file

#### list stats for names and last names
    ./person-list-stats.rb < file

#### list unique last names
    ./person-list-name.rb < file

#### merge csv files
    ./person-list-merge.rb list-a.csv list-b.csv [list-c.csv]

* sample **file** is located in test/sample/data/sample.csv

## License

MIT License

Copyright (c) 2016 github.com/jimii

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.