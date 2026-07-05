package res

import "list"

google_dns_response_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dns_response_policy_rule")
	close({
		local_data?: matchN(1, [#local_data, list.MaxItems(1) & [...#local_data]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The DNS name (wildcard or exact) to apply this rule to. Must be unique within
		// the Response Policy Rule.
		dns_name!: string
		id?:       string

		// Identifies the response policy addressed by this request.
		response_policy!: string
		project?:         string

		// An identifier for this rule. Must be unique with the ResponsePolicy.
		rule_name!: string
	})

	#local_data: close({
		local_datas!: matchN(1, [_#defs."/$defs/local_data/$defs/local_datas", [_, ...] & [..._#defs."/$defs/local_data/$defs/local_datas"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/local_data/$defs/local_datas": close({
		// For example, www.example.com.
		name!: string

		// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1)
		rrdatas?: [...string]

		// Number of seconds that this ResourceRecordSet can be cached by
		// resolvers.
		ttl?: number

		// One of valid DNS resource types. Possible values: ["A", "AAAA", "CAA",
		// "CNAME", "DNSKEY", "DS", "HTTPS", "IPSECVPNKEY", "MX", "NAPTR", "NS", "PTR",
		// "SOA", "SPF", "SRV", "SSHFP", "SVCB", "TLSA", "TXT"]
		type!: string
	})
}
