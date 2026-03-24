package data

#scaleway_baremetal_offer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_baremetal_offer")
	close({
		// Available Bandwidth with the offer
		bandwidth?: number

		// Commercial range of the offer
		commercial_range?: string

		// CPU specifications of the offer
		cpu?: [...close({
			core_count?:   number
			frequency?:    number
			name?:         string
			thread_count?: number
		})]

		// Disk specifications of the offer
		disk?: [...close({
			capacity?: number
			type?:     string
		})]
		id?: string

		// Include disabled offers
		include_disabled?: bool

		// Memory specifications of the offer
		memory?: [...close({
			capacity?:  number
			frequency?: number
			is_ecc?:    bool
			type?:      string
		})]

		// Exact name of the desired offer
		name?: string

		// ID of the desired offer
		offer_id?: string

		// Stock status for this offer
		stock?: string

		// Period of subscription the desired offer
		subscription_period?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
