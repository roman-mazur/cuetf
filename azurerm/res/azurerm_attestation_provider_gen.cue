package res

#azurerm_attestation_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_attestation_provider")
	close({
		attestation_uri?:                 string
		id?:                              string
		location!:                        string
		name!:                            string
		open_enclave_policy_base64?:      string
		policy_signing_certificate_data?: string
		resource_group_name!:             string
		sev_snp_policy_base64?:           string
		timeouts?:                        #timeouts
		sgx_enclave_policy_base64?:       string
		tags?: [string]: string
		tpm_policy_base64?: string
		trust_model?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
