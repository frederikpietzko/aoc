import gleam/string
import gleam/result
import argv
import gleam/list
import simplifile.{read}

pub fn lines(filename: String) -> Result(List(String), simplifile.FileError) {
   read(from: filename)
    |> result.map(split_lines)
}

fn split_lines(lines: String) -> List(String) {
  string.split(lines, "\n")
}


pub fn filename() -> Result(String, Nil) {
  list.last(argv.load().arguments)
}
