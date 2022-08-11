package cuetf

#tBlockAttr: {
	// input: #block // This takes about 20 seconds.
	input: _
	output: {
		primitives: [string]: close({
			type: #attr.#primitive
			optional: bool
		})
	}
	output: {
		for name, def in input.attributes {
			if (def.type & #attr.#primitive) != _|_ {
				primitives: "\(name)": {
					type: def.type
					optional: def.optional | !def.required
				}
			}

			// TODO: Add bounded recursion to transform into CUE definitions.
		}
	}
}

tTest: #tBlockAttr & {input: main.provider.block}
