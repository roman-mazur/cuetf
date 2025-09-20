package res

import "list"

#azurerm_key_vault_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_certificate")
	close({
		certificate_attribute?: [...close({
			created?:        string
			enabled?:        bool
			expires?:        string
			not_before?:     string
			recovery_level?: string
			updated?:        string
		})]
		certificate_data?:                string
		certificate_data_base64?:         string
		id?:                              string
		key_vault_id!:                    string
		name!:                            string
		resource_manager_id?:             string
		resource_manager_versionless_id?: string
		certificate?: matchN(1, [#certificate, list.MaxItems(1) & [...#certificate]])
		certificate_policy?: matchN(1, [#certificate_policy, list.MaxItems(1) & [...#certificate_policy]])
		secret_id?: string
		tags?: [string]: string
		timeouts?:              #timeouts
		thumbprint?:            string
		version?:               string
		versionless_id?:        string
		versionless_secret_id?: string
	})

	#certificate: close({
		contents!: string
		password?: string
	})

	#certificate_policy: close({
		issuer_parameters?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/issuer_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_policy/$defs/issuer_parameters"]])
		key_properties?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/key_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_policy/$defs/key_properties"]])
		lifetime_action?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/lifetime_action", [..._#defs."/$defs/certificate_policy/$defs/lifetime_action"]])
		secret_properties?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/secret_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_policy/$defs/secret_properties"]])
		x509_certificate_properties?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/x509_certificate_properties", list.MaxItems(1) & [..._#defs."/$defs/certificate_policy/$defs/x509_certificate_properties"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/certificate_policy/$defs/issuer_parameters": close({
		name!: string
	})

	_#defs: "/$defs/certificate_policy/$defs/key_properties": close({
		curve?:      string
		exportable!: bool
		key_size?:   number
		key_type!:   string
		reuse_key!:  bool
	})

	_#defs: "/$defs/certificate_policy/$defs/lifetime_action": close({
		action?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/lifetime_action/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_policy/$defs/lifetime_action/$defs/action"]])
		trigger?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/lifetime_action/$defs/trigger", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/certificate_policy/$defs/lifetime_action/$defs/trigger"]])
	})

	_#defs: "/$defs/certificate_policy/$defs/lifetime_action/$defs/action": close({
		action_type!: string
	})

	_#defs: "/$defs/certificate_policy/$defs/lifetime_action/$defs/trigger": close({
		days_before_expiry?:  number
		lifetime_percentage?: number
	})

	_#defs: "/$defs/certificate_policy/$defs/secret_properties": close({
		content_type!: string
	})

	_#defs: "/$defs/certificate_policy/$defs/x509_certificate_properties": close({
		subject_alternative_names?: matchN(1, [_#defs."/$defs/certificate_policy/$defs/x509_certificate_properties/$defs/subject_alternative_names", list.MaxItems(1) & [..._#defs."/$defs/certificate_policy/$defs/x509_certificate_properties/$defs/subject_alternative_names"]])
		extended_key_usage?: [...string]
		key_usage!: [...string]
		subject!:            string
		validity_in_months!: number
	})

	_#defs: "/$defs/certificate_policy/$defs/x509_certificate_properties/$defs/subject_alternative_names": close({
		dns_names?: [...string]
		emails?: [...string]
		upns?: [...string]
	})
}
