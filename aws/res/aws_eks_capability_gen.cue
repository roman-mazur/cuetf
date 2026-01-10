package res

#aws_eks_capability: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_eks_capability")
	close({
		arn?:                       string
		capability_name!:           string
		cluster_name!:              string
		delete_propagation_policy!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		configuration?: matchN(1, [#configuration, [...#configuration]])
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:    string
		version?: string
	})

	#configuration: close({
		argo_cd?: matchN(1, [_#defs."/$defs/configuration/$defs/argo_cd", [..._#defs."/$defs/configuration/$defs/argo_cd"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/argo_cd": close({
		aws_idc?: matchN(1, [_#defs."/$defs/configuration/$defs/argo_cd/$defs/aws_idc", [..._#defs."/$defs/configuration/$defs/argo_cd/$defs/aws_idc"]])
		network_access?: matchN(1, [_#defs."/$defs/configuration/$defs/argo_cd/$defs/network_access", [..._#defs."/$defs/configuration/$defs/argo_cd/$defs/network_access"]])
		rbac_role_mapping?: matchN(1, [_#defs."/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping", [..._#defs."/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping"]])
		namespace?:  string
		server_url?: string
	})

	_#defs: "/$defs/configuration/$defs/argo_cd/$defs/aws_idc": close({
		idc_instance_arn!:            string
		idc_managed_application_arn?: string
		idc_region?:                  string
	})

	_#defs: "/$defs/configuration/$defs/argo_cd/$defs/network_access": close({
		vpce_ids?: [...string]
	})

	_#defs: "/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping": close({
		identity?: matchN(1, [_#defs."/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping/$defs/identity", [..._#defs."/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping/$defs/identity"]])
		role!: string
	})

	_#defs: "/$defs/configuration/$defs/argo_cd/$defs/rbac_role_mapping/$defs/identity": close({
		id!:   string
		type!: string
	})
}
