package res

import "list"

#aws_kms_custom_key_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_custom_key_store")
	close({
		cloud_hsm_cluster_id?:     string
		custom_key_store_name!:    string
		timeouts?:                 #timeouts
		custom_key_store_type?:    string
		id?:                       string
		key_store_password?:       string
		region?:                   string
		trust_anchor_certificate?: string
		xks_proxy_authentication_credential?: matchN(1, [#xks_proxy_authentication_credential, list.MaxItems(1) & [...#xks_proxy_authentication_credential]])
		xks_proxy_connectivity?:              string
		xks_proxy_uri_endpoint?:              string
		xks_proxy_uri_path?:                  string
		xks_proxy_vpc_endpoint_service_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#xks_proxy_authentication_credential: close({
		access_key_id!:         string
		raw_secret_access_key!: string
	})
}
