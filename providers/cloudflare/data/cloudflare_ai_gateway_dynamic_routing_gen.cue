package data

cloudflare_ai_gateway_dynamic_routing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_gateway_dynamic_routing")
	close({
		account_id?: string
		created_at?: string
		deployment?: close({
			created_at?:    string
			deployment_id?: string
			version_id?:    string
		})
		elements?: matchN(1, [close({
			id?: string
			outputs?: close({
				element_id?: string
				fallback?: close({
					element_id?: string
				})
				false?: close({
					element_id?: string
				})
				next?: close({
					element_id?: string
				})
				success?: close({
					element_id?: string
				})
				true?: close({
					element_id?: string
				})
			})

			// Available values: "start", "conditional", "percentage", "rate", "model", "end".
			type?: string
			properties?: close({
				ai_gateway_dynamic_routing_provider?: string

				// Available values: "count", "cost".
				limit_type?: string
				conditions?: string
				key?:        string
				limit?:      number
				model?:      string
				retries?:    number
				timeout?:    number
				window?:     number
			})
		}), [...close({
			id?: string
			outputs?: close({
				element_id?: string
				fallback?: close({
					element_id?: string
				})
				false?: close({
					element_id?: string
				})
				next?: close({
					element_id?: string
				})
				success?: close({
					element_id?: string
				})
				true?: close({
					element_id?: string
				})
			})

			// Available values: "start", "conditional", "percentage", "rate", "model", "end".
			type?: string
			properties?: close({
				ai_gateway_dynamic_routing_provider?: string

				// Available values: "count", "cost".
				limit_type?: string
				conditions?: string
				key?:        string
				limit?:      number
				model?:      string
				retries?:    number
				timeout?:    number
				window?:     number
			})
		})]])
		gateway_id!:  string
		id!:          string
		modified_at?: string
		name?:        string
		version?: close({
			// Available values: "true", "false".
			active?:     string
			created_at?: string
			data?:       string
			is_valid?:   bool
			version_id?: string
		})
	})
}
