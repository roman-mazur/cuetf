package res

import "list"

#azurerm_key_vault_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_key")
	close({
		curve?: string
		rotation_policy?: matchN(1, [#rotation_policy, list.MaxItems(1) & [...#rotation_policy]])
		e?:               string
		expiration_date?: string
		id?:              string
		key_opts!: [...string]
		timeouts?:                #timeouts
		key_size?:                number
		key_type!:                string
		key_vault_id!:            string
		n?:                       string
		name!:                    string
		not_before_date?:         string
		public_key_openssh?:      string
		public_key_pem?:          string
		resource_id?:             string
		resource_versionless_id?: string
		tags?: [string]: string
		version?:        string
		versionless_id?: string
		x?:              string
		y?:              string
	})

	#rotation_policy: close({
		automatic?: matchN(1, [_#defs."/$defs/rotation_policy/$defs/automatic", list.MaxItems(1) & [..._#defs."/$defs/rotation_policy/$defs/automatic"]])
		expire_after?:         string
		notify_before_expiry?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rotation_policy/$defs/automatic": close({
		time_after_creation?: string
		time_before_expiry?:  string
	})
}
