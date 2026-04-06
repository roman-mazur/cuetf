package data

#scaleway_domain_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_domain_registration")
	close({
		// Details of the administrative contact.
		administrative_contact?: [...close({
			address_line_1?:              string
			address_line_2?:              string
			city?:                        string
			company_identification_code?: string
			company_name?:                string
			country?:                     string
			email?:                       string
			email_alt?:                   string
			extension_eu?: [...close({
				european_citizenship?: string
			})]
			extension_fr?: [...close({
				association_info?: [...close({
					publication_jo?:      string
					publication_jo_page?: number
				})]
				code_auth_afnic_info?: [...close({
					code_auth_afnic?: string
				})]
				duns_info?: [...close({
					duns_id?:  string
					local_id?: string
				})]
				individual_info?: [...close({
					whois_opt_in?: bool
				})]
				mode?: string
				trademark_info?: [...close({
					trademark_inpi?: string
				})]
			})]
			extension_nl?: [...string]
			fax_number?:              string
			firstname?:               string
			lang?:                    string
			lastname?:                string
			legal_form?:              string
			phone_number?:            string
			resale?:                  bool
			state?:                   string
			vat_identification_code?: string
			whois_opt_in?:            bool
			zip?:                     string
		})]

		// Enable or disable auto-renewal of the domain.
		auto_renew?: bool

		// Enable or disable dnssec for the domain.
		dnssec?: bool

		// The domain name to look up (e.g. example.com).
		domain_name!: string

		// List of domain names in the registration.
		domain_names?: [...string]

		// dnssec DS record configuration.
		ds_record?: [...close({
			algorithm?: string
			digest?: [...close({
				digest?: string
				public_key?: [...close({
					key?: string
				})]
				type?: string
			})]
			key_id?: number
			public_key?: [...close({
				key?: string
			})]
		})]

		// Duration of the registration period in years.
		duration_in_years?: number
		id?:                string

		// Details of the owner contact. Either `owner_contact_id` or
		// `owner_contact` must be provided.
		owner_contact?: [...close({
			address_line_1?:              string
			address_line_2?:              string
			city?:                        string
			company_identification_code?: string
			company_name?:                string
			country?:                     string
			email?:                       string
			email_alt?:                   string
			extension_eu?: [...close({
				european_citizenship?: string
			})]
			extension_fr?: [...close({
				association_info?: [...close({
					publication_jo?:      string
					publication_jo_page?: number
				})]
				code_auth_afnic_info?: [...close({
					code_auth_afnic?: string
				})]
				duns_info?: [...close({
					duns_id?:  string
					local_id?: string
				})]
				individual_info?: [...close({
					whois_opt_in?: bool
				})]
				mode?: string
				trademark_info?: [...close({
					trademark_inpi?: string
				})]
			})]
			extension_nl?: [...string]
			fax_number?:              string
			firstname?:               string
			lang?:                    string
			lastname?:                string
			legal_form?:              string
			phone_number?:            string
			resale?:                  bool
			state?:                   string
			vat_identification_code?: string
			whois_opt_in?:            bool
			zip?:                     string
		})]

		// ID of the owner contact. Either `owner_contact_id` or
		// `owner_contact` must be provided.
		owner_contact_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// ID of the task that created the domain.
		task_id?: string

		// Details of the technical contact.
		technical_contact?: [...close({
			address_line_1?:              string
			address_line_2?:              string
			city?:                        string
			company_identification_code?: string
			company_name?:                string
			country?:                     string
			email?:                       string
			email_alt?:                   string
			extension_eu?: [...close({
				european_citizenship?: string
			})]
			extension_fr?: [...close({
				association_info?: [...close({
					publication_jo?:      string
					publication_jo_page?: number
				})]
				code_auth_afnic_info?: [...close({
					code_auth_afnic?: string
				})]
				duns_info?: [...close({
					duns_id?:  string
					local_id?: string
				})]
				individual_info?: [...close({
					whois_opt_in?: bool
				})]
				mode?: string
				trademark_info?: [...close({
					trademark_inpi?: string
				})]
			})]
			extension_nl?: [...string]
			fax_number?:              string
			firstname?:               string
			lang?:                    string
			lastname?:                string
			legal_form?:              string
			phone_number?:            string
			resale?:                  bool
			state?:                   string
			vat_identification_code?: string
			whois_opt_in?:            bool
			zip?:                     string
		})]
	})
}
