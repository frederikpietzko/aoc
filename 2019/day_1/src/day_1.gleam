import gleam/int
import gleam/list
import gleam/result
import gleam/io
import utils

pub fn main() {
  let assert Ok(lines) = utils.filename()
    |> result.map(utils.lines)
    |> result.map(result.nil_error)
    |> result.flatten

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
