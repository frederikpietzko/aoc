import gleam/int
import gleam/list
import gleam/string
import gleam/result
import gleam/io
import simplifile.{read}
import argv

pub fn main() {
  let assert Ok(filename) = list.last(argv.load().arguments)
  let assert Ok(lines) = read_file(filename)
  let masses = lines
  |> list.filter_map(int.parse)
  part_1(masses)
  part_2(masses)
  0
}

fn part_2(masses: List(Int)) {
  let total = masses
    |> list.filter_map(rec_fuel)
    |> int.sum
  io.println(int.to_string(total))
}

fn rec_fuel(mass: Int) -> Result(Int, Nil) {
  let fuel_mass = mass / 3 - 2
  case  fuel_mass <= 0 {
    True -> Error(Nil)
    False -> case rec_fuel(fuel_mass) {
      Ok(x) -> Ok(fuel_mass + x)
      Error(_) -> Ok(fuel_mass)
    }
  }
}

fn part_1(masses: List(Int)) {
  let fuel = masses
  |> list.map(fn (a) { a / 3 - 2})
  |> int.sum
  io.println(int.to_string(fuel))
}

fn read_file(file: String) -> Result(List(String), simplifile.FileError) {
  read(from: file)
    |> result.map(fn(a) {string.split(a, "\n")})
}