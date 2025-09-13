package cloudflare

testSamples: #Terraform
testSamples: resource: {
	cloudflare_zero_trust_gateway_logging: sample: {
		account_id: "sample"
		redact_pii: true
		settings_by_rule_type: {
			dns: log_blocks: true
		}
	}
}
