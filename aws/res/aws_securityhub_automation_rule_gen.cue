package res

#aws_securityhub_automation_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_automation_rule")
	close({
		arn?:         string
		description!: string
		id?:          string
		is_terminal?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		rule_name!: string
		actions?: matchN(1, [#actions, [...#actions]])
		criteria?: matchN(1, [#criteria, [...#criteria]])
		rule_order!:  number
		rule_status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#actions: close({
		finding_fields_update?: matchN(1, [_#defs."/$defs/actions/$defs/finding_fields_update", [..._#defs."/$defs/actions/$defs/finding_fields_update"]])
		type?: string
	})

	#criteria: close({
		aws_account_id?: matchN(1, [_#defs."/$defs/criteria/$defs/aws_account_id", [..._#defs."/$defs/criteria/$defs/aws_account_id"]])
		aws_account_name?: matchN(1, [_#defs."/$defs/criteria/$defs/aws_account_name", [..._#defs."/$defs/criteria/$defs/aws_account_name"]])
		company_name?: matchN(1, [_#defs."/$defs/criteria/$defs/company_name", [..._#defs."/$defs/criteria/$defs/company_name"]])
		compliance_associated_standards_id?: matchN(1, [_#defs."/$defs/criteria/$defs/compliance_associated_standards_id", [..._#defs."/$defs/criteria/$defs/compliance_associated_standards_id"]])
		compliance_security_control_id?: matchN(1, [_#defs."/$defs/criteria/$defs/compliance_security_control_id", [..._#defs."/$defs/criteria/$defs/compliance_security_control_id"]])
		compliance_status?: matchN(1, [_#defs."/$defs/criteria/$defs/compliance_status", [..._#defs."/$defs/criteria/$defs/compliance_status"]])
		confidence?: matchN(1, [_#defs."/$defs/criteria/$defs/confidence", [..._#defs."/$defs/criteria/$defs/confidence"]])
		created_at?: matchN(1, [_#defs."/$defs/criteria/$defs/created_at", [..._#defs."/$defs/criteria/$defs/created_at"]])
		criticality?: matchN(1, [_#defs."/$defs/criteria/$defs/criticality", [..._#defs."/$defs/criteria/$defs/criticality"]])
		description?: matchN(1, [_#defs."/$defs/criteria/$defs/description", [..._#defs."/$defs/criteria/$defs/description"]])
		first_observed_at?: matchN(1, [_#defs."/$defs/criteria/$defs/first_observed_at", [..._#defs."/$defs/criteria/$defs/first_observed_at"]])
		generator_id?: matchN(1, [_#defs."/$defs/criteria/$defs/generator_id", [..._#defs."/$defs/criteria/$defs/generator_id"]])
		id?: matchN(1, [_#defs."/$defs/criteria/$defs/id", [..._#defs."/$defs/criteria/$defs/id"]])
		last_observed_at?: matchN(1, [_#defs."/$defs/criteria/$defs/last_observed_at", [..._#defs."/$defs/criteria/$defs/last_observed_at"]])
		note_text?: matchN(1, [_#defs."/$defs/criteria/$defs/note_text", [..._#defs."/$defs/criteria/$defs/note_text"]])
		note_updated_at?: matchN(1, [_#defs."/$defs/criteria/$defs/note_updated_at", [..._#defs."/$defs/criteria/$defs/note_updated_at"]])
		note_updated_by?: matchN(1, [_#defs."/$defs/criteria/$defs/note_updated_by", [..._#defs."/$defs/criteria/$defs/note_updated_by"]])
		product_arn?: matchN(1, [_#defs."/$defs/criteria/$defs/product_arn", [..._#defs."/$defs/criteria/$defs/product_arn"]])
		product_name?: matchN(1, [_#defs."/$defs/criteria/$defs/product_name", [..._#defs."/$defs/criteria/$defs/product_name"]])
		record_state?: matchN(1, [_#defs."/$defs/criteria/$defs/record_state", [..._#defs."/$defs/criteria/$defs/record_state"]])
		related_findings_id?: matchN(1, [_#defs."/$defs/criteria/$defs/related_findings_id", [..._#defs."/$defs/criteria/$defs/related_findings_id"]])
		related_findings_product_arn?: matchN(1, [_#defs."/$defs/criteria/$defs/related_findings_product_arn", [..._#defs."/$defs/criteria/$defs/related_findings_product_arn"]])
		resource_application_arn?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_application_arn", [..._#defs."/$defs/criteria/$defs/resource_application_arn"]])
		resource_application_name?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_application_name", [..._#defs."/$defs/criteria/$defs/resource_application_name"]])
		resource_details_other?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_details_other", [..._#defs."/$defs/criteria/$defs/resource_details_other"]])
		resource_id?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_id", [..._#defs."/$defs/criteria/$defs/resource_id"]])
		resource_partition?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_partition", [..._#defs."/$defs/criteria/$defs/resource_partition"]])
		resource_region?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_region", [..._#defs."/$defs/criteria/$defs/resource_region"]])
		resource_tags?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_tags", [..._#defs."/$defs/criteria/$defs/resource_tags"]])
		resource_type?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_type", [..._#defs."/$defs/criteria/$defs/resource_type"]])
		severity_label?: matchN(1, [_#defs."/$defs/criteria/$defs/severity_label", [..._#defs."/$defs/criteria/$defs/severity_label"]])
		source_url?: matchN(1, [_#defs."/$defs/criteria/$defs/source_url", [..._#defs."/$defs/criteria/$defs/source_url"]])
		title?: matchN(1, [_#defs."/$defs/criteria/$defs/title", [..._#defs."/$defs/criteria/$defs/title"]])
		type?: matchN(1, [_#defs."/$defs/criteria/$defs/type", [..._#defs."/$defs/criteria/$defs/type"]])
		updated_at?: matchN(1, [_#defs."/$defs/criteria/$defs/updated_at", [..._#defs."/$defs/criteria/$defs/updated_at"]])
		user_defined_fields?: matchN(1, [_#defs."/$defs/criteria/$defs/user_defined_fields", [..._#defs."/$defs/criteria/$defs/user_defined_fields"]])
		verification_state?: matchN(1, [_#defs."/$defs/criteria/$defs/verification_state", [..._#defs."/$defs/criteria/$defs/verification_state"]])
		workflow_status?: matchN(1, [_#defs."/$defs/criteria/$defs/workflow_status", [..._#defs."/$defs/criteria/$defs/workflow_status"]])
	})

	_#defs: "/$defs/actions/$defs/finding_fields_update": close({
		confidence?:  number
		criticality?: number
		types?: [...string]
		user_defined_fields?: [string]: string
		verification_state?: string
		note?: matchN(1, [_#defs."/$defs/actions/$defs/finding_fields_update/$defs/note", [..._#defs."/$defs/actions/$defs/finding_fields_update/$defs/note"]])
		related_findings?: matchN(1, [_#defs."/$defs/actions/$defs/finding_fields_update/$defs/related_findings", [..._#defs."/$defs/actions/$defs/finding_fields_update/$defs/related_findings"]])
		severity?: matchN(1, [_#defs."/$defs/actions/$defs/finding_fields_update/$defs/severity", [..._#defs."/$defs/actions/$defs/finding_fields_update/$defs/severity"]])
		workflow?: matchN(1, [_#defs."/$defs/actions/$defs/finding_fields_update/$defs/workflow", [..._#defs."/$defs/actions/$defs/finding_fields_update/$defs/workflow"]])
	})

	_#defs: "/$defs/actions/$defs/finding_fields_update/$defs/note": close({
		text!:       string
		updated_by!: string
	})

	_#defs: "/$defs/actions/$defs/finding_fields_update/$defs/related_findings": close({
		id!:          string
		product_arn!: string
	})

	_#defs: "/$defs/actions/$defs/finding_fields_update/$defs/severity": close({
		label?:   string
		product?: number
	})

	_#defs: "/$defs/actions/$defs/finding_fields_update/$defs/workflow": close({
		status?: string
	})

	_#defs: "/$defs/criteria/$defs/aws_account_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/aws_account_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/company_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/compliance_associated_standards_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/compliance_security_control_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/compliance_status": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/confidence": close({
		eq?:  number
		gt?:  number
		gte?: number
		lt?:  number
		lte?: number
	})

	_#defs: "/$defs/criteria/$defs/created_at": close({
		date_range?: matchN(1, [_#defs."/$defs/criteria/$defs/created_at/$defs/date_range", [..._#defs."/$defs/criteria/$defs/created_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/criteria/$defs/created_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/criteria/$defs/criticality": close({
		eq?:  number
		gt?:  number
		gte?: number
		lt?:  number
		lte?: number
	})

	_#defs: "/$defs/criteria/$defs/description": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/first_observed_at": close({
		date_range?: matchN(1, [_#defs."/$defs/criteria/$defs/first_observed_at/$defs/date_range", [..._#defs."/$defs/criteria/$defs/first_observed_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/criteria/$defs/first_observed_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/criteria/$defs/generator_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/last_observed_at": close({
		date_range?: matchN(1, [_#defs."/$defs/criteria/$defs/last_observed_at/$defs/date_range", [..._#defs."/$defs/criteria/$defs/last_observed_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/criteria/$defs/last_observed_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/criteria/$defs/note_text": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/note_updated_at": close({
		date_range?: matchN(1, [_#defs."/$defs/criteria/$defs/note_updated_at/$defs/date_range", [..._#defs."/$defs/criteria/$defs/note_updated_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/criteria/$defs/note_updated_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/criteria/$defs/note_updated_by": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/product_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/product_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/record_state": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/related_findings_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/related_findings_product_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_application_arn": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_application_name": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_details_other": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_id": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_partition": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_region": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_tags": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/resource_type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/severity_label": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/source_url": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/title": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/type": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/updated_at": close({
		date_range?: matchN(1, [_#defs."/$defs/criteria/$defs/updated_at/$defs/date_range", [..._#defs."/$defs/criteria/$defs/updated_at/$defs/date_range"]])
		end?:   string
		start?: string
	})

	_#defs: "/$defs/criteria/$defs/updated_at/$defs/date_range": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/criteria/$defs/user_defined_fields": close({
		comparison!: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/verification_state": close({
		comparison!: string
		value!:      string
	})

	_#defs: "/$defs/criteria/$defs/workflow_status": close({
		comparison!: string
		value!:      string
	})
}
