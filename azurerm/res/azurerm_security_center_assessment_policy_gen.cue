package res

#azurerm_security_center_assessment_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_security_center_assessment_policy")
	close({
		categories?: [...string]
		description!:             string
		display_name!:            string
		id?:                      string
		implementation_effort?:   string
		name?:                    string
		remediation_description?: string
		timeouts?:                #timeouts
		severity?:                string
		threats?: [...string]
		user_impact?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
