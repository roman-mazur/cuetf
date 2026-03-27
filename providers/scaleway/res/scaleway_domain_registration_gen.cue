package res

import "list"

#scaleway_domain_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_domain_registration")
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
		owner_contact?: matchN(1, [#owner_contact, list.MaxItems(1) & [...#owner_contact]])

		// Enable or disable dnssec for the domain.
		dnssec?: bool

		// List of domain names to be managed.
		domain_names!: [...string]

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
		timeouts?: #timeouts

		// Duration of the registration period in years.
		duration_in_years?: number
		id?:                string

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

	#owner_contact: close({
		extension_eu?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_eu", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_eu"]])
		extension_fr?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr"]])

		// Primary address line for the contact.
		address_line_1!: string

		// Secondary address line for the contact (optional).
		address_line_2?: string

		// City of the contact's address.
		city!: string

		// Company identification code (e.g., SIREN/SIRET in France) for
		// the contact.
		company_identification_code!: string

		// Name of the company associated with the contact (if
		// applicable).
		company_name?: string

		// Country code of the contact's address (ISO format).
		country!: string

		// Primary email address of the contact.
		email!: string

		// Alternative email address for the contact.
		email_alt?: string

		// Extension details specific to Dutch domain registrations.
		extension_nl?: [...string]

		// Fax number for the contact (if available).
		fax_number?: string

		// First name of the contact.
		firstname!: string

		// Preferred language of the contact (e.g., 'en_US', 'fr_FR').
		lang?: string

		// Last name of the contact.
		lastname!: string

		// Legal form of the contact (e.g., 'individual' or
		// 'organization').
		legal_form!: string

		// Primary phone number of the contact.
		phone_number!: string

		// Indicates if the contact is used for resale purposes.
		resale?: bool

		// State or region of the contact.
		state?: string

		// VAT identification code of the contact, if applicable.
		vat_identification_code!: string

		// Indicates whether the contact has opted into WHOIS publishing.
		whois_opt_in?: bool

		// Postal code of the contact's address.
		zip!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})

	_#defs: "/$defs/owner_contact/$defs/extension_eu": close({
		// Indicates the European citizenship of the contact.
		european_citizenship?: string
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr": close({
		association_info?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr/$defs/association_info", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr/$defs/association_info"]])
		code_auth_afnic_info?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr/$defs/code_auth_afnic_info", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr/$defs/code_auth_afnic_info"]])
		duns_info?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr/$defs/duns_info", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr/$defs/duns_info"]])
		individual_info?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr/$defs/individual_info", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr/$defs/individual_info"]])
		trademark_info?: matchN(1, [_#defs."/$defs/owner_contact/$defs/extension_fr/$defs/trademark_info", list.MaxItems(1) & [..._#defs."/$defs/owner_contact/$defs/extension_fr/$defs/trademark_info"]])

		// Mode of the French extension (e.g., 'individual', 'duns',
		// 'association', etc.).
		mode?: string
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr/$defs/association_info": close({
		// Publication date in the Official Journal (RFC3339 format) for
		// association information.
		publication_jo?: string

		// Page number of the publication in the Official Journal for
		// association information.
		publication_jo_page?: number
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr/$defs/code_auth_afnic_info": close({
		// AFNIC authorization code for the contact (specific to French
		// domains).
		code_auth_afnic?: string
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr/$defs/duns_info": close({
		// DUNS ID associated with the domain owner (for French domains).
		duns_id?: string

		// Local identifier of the domain owner (for French domains).
		local_id?: string
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr/$defs/individual_info": close({
		// Whether the individual contact has opted into WHOIS publishing.
		whois_opt_in?: bool
	})

	_#defs: "/$defs/owner_contact/$defs/extension_fr/$defs/trademark_info": close({
		// Trademark information from INPI (French extension).
		trademark_inpi?: string
	})
}
