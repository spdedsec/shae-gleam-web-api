import gleam/http
import gleam/json
import gleam/option
import gleam/result
import gleam/string

pub type Item {
  Item(id: String, data: String)
}

pub fn main() {
  // Gleam web API structure - compiled to JavaScript/Erlang
  // This is the source definition; runtime built via `gleam build`
  io.println("SHAE Gleam Web API")
  io.println("Endpoints:")
  io.println("  GET    /api/items")
  io.println("  POST   /api/items")
  io.println("  GET    /api/items/:id")
  io.println("  DELETE /api/items/:id")
}

pub fn handle_request(method: String, path: String, body: Option(String)) -> Result(String, String) {
  let response = case method {
    "GET" when path == "/api/items" -> Ok(json.encode(#(items: [])))
    "POST" when path == "/api/items" -> Ok(json.encode(#(status: "created")))
    _ -> Error("not found")
  }
  response
}

pub fn item_to_json(item: Item) -> String {
  json.encode(#(
    id: item.id,
    data: item.data,
  ))
}
