package res

import "list"

#azurerm_cdn_endpoint_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_endpoint_custom_domain")
	close({
		cdn_managed_https?: matchN(1, [#cdn_managed_https, list.MaxItems(1) & [...#cdn_managed_https]])
		cdn_endpoint_id!: string
		host_name!:       string
		id?:              string
		name!:            string
		timeouts?:        #timeouts
		user_managed_https?: matchN(1, [#user_managed_https, list.MaxItems(1) & [...#user_managed_https]])
	})

	#cdn_managed_https: close({
		certificate_type!: string
		protocol_type!:    string
		tls_version?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user_managed_https: close({
		key_vault_secret_id!: string
		tls_version?:         string
	})
}
