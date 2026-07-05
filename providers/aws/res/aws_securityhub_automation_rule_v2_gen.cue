package res

aws_securityhub_automation_rule_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securityhub_automation_rule_v2")
	close({
		action?: matchN(1, [#action, [...#action]])
		criteria?: matchN(1, [#criteria, [...#criteria]])
		arn?: string

		// A description of the automation rule.
		description!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The name of the automation rule.
		rule_name!: string
		rule_id?:   string

		// The priority of the rule (lower values = higher priority).
		rule_order!: number

		// The status of the rule: ENABLED or DISABLED.
		rule_status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#action: close({
		external_integration_configuration?: matchN(1, [_#defs."/$defs/action/$defs/external_integration_configuration", [..._#defs."/$defs/action/$defs/external_integration_configuration"]])
		finding_fields_update?: matchN(1, [_#defs."/$defs/action/$defs/finding_fields_update", [..._#defs."/$defs/action/$defs/finding_fields_update"]])

		// The action type: FINDING_FIELDS_UPDATE or EXTERNAL_INTEGRATION.
		type!: string
	})

	#criteria: close({
		// JSON-encoded OCSF finding criteria for the rule.
		ocsf_finding_criteria_json!: string
	})

	_#defs: "/$defs/action/$defs/external_integration_configuration": close({
		// The ARN of the connector.
		connector_arn!: string
	})

	_#defs: "/$defs/action/$defs/finding_fields_update": close({
		// A comment for the finding.
		comment?: string

		// The severity ID to assign.
		severity_id?: number

		// The status ID to assign.
		status_id?: number
	})
}
