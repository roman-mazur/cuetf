package data

#cloudflare_stream_watermarks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_stream_watermarks")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			created?:         string
			downloaded_from?: string
			height?:          number
			name?:            string
			opacity?:         number
			padding?:         number
			position?:        string
			scale?:           number
			size?:            number
			uid?:             string
			width?:           number
		}), [...close({
			created?:         string
			downloaded_from?: string
			height?:          number
			name?:            string
			opacity?:         number
			padding?:         number
			position?:        string
			scale?:           number
			size?:            number
			uid?:             string
			width?:           number
		})]])
	})
}
