// blog.v
module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 5678)
}

@['/index']
pub fn (mut app App) index() vweb.Result {
	message := 'Hello, world from Vweb!'
	return $vweb.html()
}
