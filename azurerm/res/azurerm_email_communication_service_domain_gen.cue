package res

#azurerm_email_communication_service_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_email_communication_service_domain")
	close({
		timeouts?:                #timeouts
		domain_management!:       string
		email_service_id!:        string
		from_sender_domain?:      string
		id?:                      string
		mail_from_sender_domain?: string
		name!:                    string
		tags?: [string]: string
		user_engagement_tracking_enabled?: bool
		verification_records?: [...close({
			dkim?: [...close({
				name?:  string
				ttl?:   number
				type?:  string
				value?: string
			})]
			dkim2?: [...close({
				name?:  string
				ttl?:   number
				type?:  string
				value?: string
			})]
			dmarc?: [...close({
				name?:  string
				ttl?:   number
				type?:  string
				value?: string
			})]
			domain?: [...close({
				name?:  string
				ttl?:   number
				type?:  string
				value?: string
			})]
			spf?: [...close({
				name?:  string
				ttl?:   number
				type?:  string
				value?: string
			})]
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
